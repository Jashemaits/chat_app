import 'package:chat_app/chat/application/chat_bloc.dart';
import 'package:chat_app/core/models/message_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChatBloc()..add(ChatEvent.loadMessages(roomId: widget.roomId)),
      child: Scaffold(
        appBar: AppBar(title: Text(widget.roomName)),
        body: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (messages) => Column(
                children: [
                  Expanded(
                    child: messages.isEmpty
                        ? const Center(child: Text('No messages yet'))
                        : ListView.builder(
                            reverse: true,
                            controller: _scrollController,
                            itemCount: messages.length,
                            itemBuilder: (context, index) {
                              final message = messages[index];
                              final isCurrentUser = message.senderId ==
                                  FirebaseAuth.instance.currentUser?.uid;

                              return MessageBubble(
                                message: message,
                                isCurrentUser: isCurrentUser,
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
        ),
      ),
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
