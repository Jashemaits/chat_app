import 'package:chat_app/core/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth;

  AuthBloc(this._firebaseAuth) : super(const AuthState.initial()) {
    on<CheckAuthEvent>(_onCheckAuth);
    on<SignInWithEmailAndPassword>(_onSignInWithEmailAndPassword);
    on<SignUpWithEmailAndPassword>(_onSignUpWithEmailAndPassword);
    on<SignOut>(_onSignOut);
  }

  Future<void> _onCheckAuth(
      CheckAuthEvent event, Emitter<AuthState> emit) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      emit(AuthState.authenticated(
        UserModel(
          id: user.uid,
          email: user.email!,
          displayName: user.displayName,
        ),
      ));
    } else {
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onSignInWithEmailAndPassword(
    SignInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      final user = userCredential.user!;
      final userModel = UserModel(
        id: user.uid,
        email: user.email!,
        displayName: user.displayName,
      );
      emit(AuthState.authenticated(userModel));
    } on FirebaseAuthException catch (e) {
      emit(AuthState.error(e.message ?? 'An error occurred'));
    }
  }

  Future<void> _onSignUpWithEmailAndPassword(
    SignUpWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(const AuthState.loading());
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      final user = userCredential.user!;
      final userModel = UserModel(
        id: user.uid,
        email: user.email!,
        displayName: user.displayName,
      );
      emit(AuthState.authenticated(userModel));
    } on FirebaseAuthException catch (e) {
      emit(AuthState.error(e.message ?? 'An error occurred'));
    }
  }

  Future<void> _onSignOut(
    SignOut event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _firebaseAuth.signOut();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
