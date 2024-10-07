import 'package:chat_app/call/application/call_bloc.dart';
import 'package:chat_app/chat/application/chat_bloc.dart';
import 'package:chat_app/core/models/call_model.dart';
import 'package:chat_app/core/models/message_model.dart';
import 'package:chat_app/core/models/room_model.dart';
import 'package:chat_app/room/application/room_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  final String roomId;
  final String roomName;

  const ChatPage({
    super.key,
    required this.roomId,
    required this.roomName,
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  RTCVideoRenderer? local;
  RTCVideoRenderer? remote;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChatBloc()..add(ChatEvent.loadMessages(roomId: widget.roomId)),
      child: BlocBuilder<RoomBloc, RoomState>(
        builder: (context, roomState) {
          return roomState.maybeWhen(
            loaded: (rooms) {
              final room = rooms.firstWhere((r) => r.id == widget.roomId);
              return BlocListener<CallBloc, CallState>(
                listener: (context, callState) {
                  if (callState.currentCall?.type == CallType.video) {
                    if (callState.remoteStream != null) {
                      var tempRenderer = RTCVideoRenderer();
                      tempRenderer.initialize().then(
                        (value) {
                          tempRenderer.srcObject = callState.remoteStream;
                          setState(() {
                            remote = tempRenderer;
                          });
                        },
                      );
                    }

                    if (callState.localStream != null) {
                      var tempRenderer = RTCVideoRenderer();
                      tempRenderer.initialize().then(
                        (value) {
                          tempRenderer.srcObject = callState.localStream;
                          setState(() {
                            local = tempRenderer;
                          });
                        },
                      );
                    }
                  }
                },
                child: BlocBuilder<CallBloc, CallState>(
                  builder: (context, callState) {
                    return Scaffold(
                      appBar: AppBar(
                        title: Text(widget.roomName),
                        actions: _buildAppBarActions(context, room, callState),
                      ),
                      body: Stack(
                        children: [
                          _buildChatList(context),
                          if (callState.currentCall != null)
                            _buildCallOverlay(context, room, callState),
                        ],
                      ),
                    );
                  },
                ),
              );
            },
            orElse: () => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildAppBarActions(
      BuildContext context, RoomModel room, CallState callState) {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) return [];

    if (callState.currentCall != null) {
      return [
        IconButton(
          icon: const Icon(Icons.call_end, color: Colors.red),
          onPressed: () => context
              .read<CallBloc>()
              .add(CallEvent.endCall(roomId: widget.roomId)),
        ),
      ];
    }

    return [
      IconButton(
        icon: const Icon(Icons.video_call),
        onPressed: () => _startCall(context, room, CallType.video),
      ),
      IconButton(
        icon: const Icon(Icons.call),
        onPressed: () => _startCall(context, room, CallType.audio),
      ),
    ];
  }

  Widget _buildCallOverlay(
      BuildContext context, RoomModel room, CallState callState) {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) return const SizedBox.shrink();

    final call = callState.currentCall!;

    // Show different UI for caller and receiver
    if (call.callerId == currentUser.uid) {
      return _buildOngoingCallUI(context, callState);
    } else if (call.receiverId == currentUser.uid) {
      if (call.status == CallStatus.calling) {
        return _buildIncomingCallUI(context, room, call);
      } else if (call.status == CallStatus.connected) {
        return _buildOngoingCallUI(context, callState);
      }
    }

    return const SizedBox.shrink();
  }

  Widget _buildIncomingCallUI(
      BuildContext context, RoomModel room, CallModel call) {
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'Incoming ${call.type == CallType.video ? 'Video' : 'Audio'} Call'),
              Text('From: ${call.callerName}'),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () => context.read<CallBloc>().add(
                          CallEvent.acceptCall(
                            roomId: room.id,
                            activeCall: call,
                          ),
                        ),
                    child: const Text('Accept'),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () => context.read<CallBloc>().add(
                          CallEvent.rejectCall(
                              callId: call.callId, roomId: widget.roomId),
                        ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Reject'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOngoingCallUI(BuildContext context, CallState callState) {
    return Container(
      color: Colors.black87,
      child: Stack(
        children: [
          if (remote != null)
            Positioned.fill(
              child: RTCVideoView(remote!),
            ),
          if (local != null)
            Positioned(
              right: 16,
              top: 16,
              width: 100,
              height: 150,
              child: RTCVideoView(
                local!,
                mirror: true,
              ),
            ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () => context
                      .read<CallBloc>()
                      .add(CallEvent.endCall(roomId: widget.roomId)),
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.call_end),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _startCall(BuildContext context, RoomModel room, CallType type) {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) return;

    final otherMembers =
        room.members.where((memberId) => memberId != currentUser.uid).toList();

    if (otherMembers.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No other members in this room')),
      );
      return;
    }

    // For simplicity, we'll call the first other member
    final receiverId = otherMembers.first;

    context.read<CallBloc>().add(CallEvent.startCall(
          roomId: room.id,
          receiverId: receiverId,
          receiverName: 'Other Member', // You'd want to get the actual name
          type: type,
        ));
  }

  Widget _buildChatList(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (messages) => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return MessageBubble(
                      message: message,
                      isCurrentUser: message.senderId ==
                          FirebaseAuth.instance.currentUser?.uid,
                    );
                  },
                ),
              ),
              _buildMessageInput(context),
            ],
          ),
          error: (message) => Center(child: Text('Error: $message')),
        );
      },
    );
  }

  Widget _buildMessageInput(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type a message',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              if (_messageController.text.trim().isNotEmpty) {
                context.read<ChatBloc>().add(
                      ChatEvent.sendMessage(
                        roomId: widget.roomId,
                        message: _messageController.text.trim(),
                      ),
                    );
                _messageController.clear();
              }
            },
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final MessageModel message;
  final bool isCurrentUser;

  const MessageBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment:
            isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isCurrentUser) ...[
            CircleAvatar(
              child: Text(message.senderName[0].toUpperCase()),
            ),
            const SizedBox(width: 8),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: isCurrentUser ? Colors.blue : Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!isCurrentUser)
                    Text(
                      message.senderName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  Text(
                    message.text,
                    style: TextStyle(
                      color: isCurrentUser ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    DateFormat('HH:mm').format(message.timestamp),
                    style: TextStyle(
                      fontSize: 10,
                      color: isCurrentUser ? Colors.white70 : Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
