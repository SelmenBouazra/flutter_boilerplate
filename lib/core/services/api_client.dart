import 'dart:io';

import 'package:dio/dio.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:flutter_boilerplate/injection_container.dart' as di;
import '../../config/app_config.dart';
import '../utils/pref_utils.dart';

class ApiClient {
  final Dio dio = createDio();

  static Dio createDio() {
    PrefUtils prefUtils = di.sl<PrefUtils>();
    BaseOptions options = BaseOptions(
      baseUrl: AppConfig.shared.baseUrl,
      validateStatus: (status) {
        return status != null;
      },
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Cookie': 'x-sultan-token-1=${prefUtils.getToken()}'
      },
    );

    var dio = Dio(options);

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
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


