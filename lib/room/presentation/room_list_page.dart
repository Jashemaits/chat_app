import 'package:chat_app/chat/presentation/chat_page.dart';
import 'package:chat_app/room/application/room_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoomListPage extends StatefulWidget {
  const RoomListPage({super.key});

  @override
  State<RoomListPage> createState() => _RoomListPageState();
}

class _RoomListPageState extends State<RoomListPage> {
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Rooms'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _showCreateRoomDialog(context),
          ),
        ],
      ),
      body: BlocBuilder<RoomBloc, RoomState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (rooms) => ListView.builder(
              itemCount: rooms.length,
              itemBuilder: (context, index) {
                final room = rooms[index];
                return ListTile(
                  title: Text(room.name),
                  subtitle: Text('Created: ${room.createdAt.toString()}'),
                  trailing: room.members
                          .contains(FirebaseAuth.instance.currentUser?.uid)
                      ? Icon(Icons.check_circle, color: Colors.green)
                      : TextButton(
                          onPressed: () {
                            context.read<RoomBloc>().add(
                                  RoomEvent.joinRoom(roomId: room.id),
                                );
                          },
                          child: Text('Join'),
                        ),
                  onTap: room.members
                          .contains(FirebaseAuth.instance.currentUser?.uid)
                      ? () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatPage(
                                roomId: room.id,
                                roomName: room.name,
                              ),
                            ),
                          )
                      : null,
                );
              },
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }

  void _showCreateRoomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create Room'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Room Name'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (nameController.text.isNotEmpty) {
                context.read<RoomBloc>().add(
                      RoomEvent.create(
                        name: nameController.text,
                      ),
                    );
                Navigator.pop(context);
              }
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}
