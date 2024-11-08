part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}



class LoginEvent extends AuthEvent {
  final LoginRequest loginRequest;
  const LoginEvent({required this.loginRequest});
}


