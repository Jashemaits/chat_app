import 'package:chat_app/auth/application/auth_bloc.dart';
import 'package:chat_app/auth/presentation/login_page.dart';
import 'package:chat_app/room/presentation/room_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (user) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => RoomListPage()),
            );
          },
          unauthenticated: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => LoginPage()),
            );
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
