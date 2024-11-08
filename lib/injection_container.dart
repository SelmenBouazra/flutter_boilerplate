import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'core/network/network_info.dart';
import 'core/services/api_client.dart';
import 'core/utils/pref_utils.dart';
import 'feature/authentication/data/data_sources/auth_remote_data_source.dart';
import 'feature/authentication/data/repositories/auth_repository_impl.dart';
import 'feature/authentication/domain/repositories/auth_repository.dart';
import 'feature/authentication/domain/use_cases/login_use_case.dart';
import 'feature/authentication/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc
  sl.registerFactory(
    () => AuthBloc(
      prefUtils: sl(),
      loginUseCase: sl(),
    ),
  );

  //UseCase
  sl.registerLazySingleton(() => LoginUseCase(repository: sl()));

  // Repository
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(networkInfo: sl(), authRemoteDataSource: sl()));

  // Api Client
  sl.registerFactory(() => ApiClient());

  // DataSources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(prefUtils: sl(), apiClient: sl()));

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton<PrefUtils>(
      () => PrefUtilsImpl(sharedPreferences: sl()));
}
