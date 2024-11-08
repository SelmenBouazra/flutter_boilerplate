import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_boilerplate/feature/authentication/data/models/auth_response.dart';
import 'package:meta/meta.dart';

import '../../../../core/network/error/app_exception_response.dart';
import '../../../../core/utils/pref_utils.dart';
import '../../domain/entities/login_request.dart';
import '../../domain/use_cases/login_use_case.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final PrefUtils prefUtils;
  final LoginUseCase loginUseCase;

  AuthBloc({
    required this.prefUtils,
    required this.loginUseCase,
  }) : super(AuthInitial()) {
    on<LoginEvent>(_login);
  }

  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(LoadingLoginState());
    final response = await loginUseCase.call(event.loginRequest);

    response.fold((failure) {
      emit(FailureLoginState(error: failure));
    }, (response) async {
      emit(SuccessLoginState(authResponse: response));
    });
  }
}
