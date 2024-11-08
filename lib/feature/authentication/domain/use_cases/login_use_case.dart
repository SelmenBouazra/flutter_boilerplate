import 'package:dartz/dartz.dart';

import '../../../../core/network/error/app_exception_response.dart';
import '../../data/models/auth_response.dart';
import '../entities/login_request.dart';
import '../repositories/auth_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase({required this.repository});

  Future<Either<AppExceptionResponse, AuthResponse>> call(
      LoginRequest loginRequest) async {
    return await repository.login(loginRequest);
  }
}
