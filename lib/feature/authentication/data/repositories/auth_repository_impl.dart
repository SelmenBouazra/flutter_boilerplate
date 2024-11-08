import 'package:dartz/dartz.dart';

import '../../../../core/network/error/app_exception_response.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/login_request.dart';
import '../data_sources/auth_remote_data_source.dart';
import '../models/auth_response.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(
      {required this.authRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<AppExceptionResponse, AuthResponse>> login(
      LoginRequest loginRequest) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteLogin = await authRemoteDataSource.login(loginRequest);
        return Right(remoteLogin);
      } on AppExceptionResponse catch (e) {
        return Left(e);
      }
    } else {
      return Left(AppExceptionResponse(message: "No internet connexion"));
    }
  }

}
