import '../../../../core/network/endpoints.dart';
import '../../../../core/network/error/app_exception_response.dart';
import '../../../../core/services/api_client.dart';
import '../../../../core/utils/pref_utils.dart';
import '../../domain/entities/login_request.dart';
import '../models/auth_response.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponse> login(LoginRequest loginRequest);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final PrefUtils prefUtils;
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl({required this.prefUtils, required this.apiClient});

  @override
  Future<AuthResponse> login(LoginRequest loginRequest) async {
    final response = await apiClient.dio.post(
      AUTH_LOGIN,
      data: loginRequest.toJson(),
    );
    if (response.statusCode == 200) {
      var authResponse = AuthResponse.fromJson(response.data);


        prefUtils.setToken(authResponse.accessToken ?? "");


      return Future.value(authResponse);
    } else {
      throw AppExceptionResponse.fromJson(response.data);
    }
  }
}
