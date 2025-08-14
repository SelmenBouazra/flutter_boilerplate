import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:flutter_boilerplate/injection_container.dart' as di;
import '../../config/app_config.dart';
import '../routers/app_router.dart';
import '../routers/app_router.gr.dart';
import '../utils/pref_utils.dart';

class ApiClient {
  final Dio dio = createDio();

  static Dio createDio() {
    PrefUtils prefUtils = di.sl<PrefUtils>();
    BaseOptions options = BaseOptions(
      baseUrl: AppConfig.shared.baseUrl,
      validateStatus: (status) {
        return status != 401;
      },
      headers: {
        'Content-Type': 'application/json',
        'Cookie': 'x-sultan-token-1=${prefUtils.getToken()}'
      },
    );

    var dio = Dio(options);

    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final HttpClient client =
        HttpClient(context: SecurityContext(withTrustedRoots: false));
        // You can test the intermediate / root cert here. We just ignore it.
        client.badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true);
        return client;
      },
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = di.sl<PrefUtils>().getToken();
          if (token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
        onError: (DioException error, handler) async {
          if (error.response?.statusCode == 401) {
            di.sl<PrefUtils>().logout();

            final currentRoute = appRouter.current.name;
            if (currentRoute != LoginRoute.name) {
              appRouter.replaceAll([const LoginRoute()]);
            }
            return handler.reject(error);
          }
          return handler.next(error);
        },
      ),
    );

    dio.interceptors.add(TalkerDioLogger(
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
        printResponseMessage: true,
      ),
    ));

    return dio;
  }
}


