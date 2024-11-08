import 'package:dartz/dartz.dart';
import '../../../../core/network/error/app_exception_response.dart';
import '../../data/models/auth_response.dart';
import '../entities/login_request.dart';

abstract class AuthRepository {
  Future<Either<AppExceptionResponse, AuthResponse>> login(
      LoginRequest loginRequest);

}
