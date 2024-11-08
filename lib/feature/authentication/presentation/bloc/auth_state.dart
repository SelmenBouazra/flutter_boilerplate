part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class IsFirstTime extends AuthState{}

class SuccessLoginState extends AuthInitial{
  final User? user;

  SuccessLoginState({required this.user});
}
class LoadingLoginState extends AuthInitial{}

class FailureLoginState extends AuthInitial{
  final AppExceptionResponse error;
  FailureLoginState({required this.error});
}

