part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = CheckAuthEvent;
  const factory AuthEvent.signInWithEmailAndPassword({
    required String email,
    required String password,
  }) = SignInWithEmailAndPassword;

  const factory AuthEvent.signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) = SignUpWithEmailAndPassword;

  const factory AuthEvent.signOut() = SignOut;
}
