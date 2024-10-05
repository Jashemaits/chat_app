import 'package:chat_app/auth/application/auth_bloc.dart';
import 'package:chat_app/splash/presentation/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthBloc(FirebaseAuth.instance)..add(const AuthEvent.checkAuth()),
      child: MaterialApp(
        title: 'Chat App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SplashPage(),
      ),
    );
  }
}
