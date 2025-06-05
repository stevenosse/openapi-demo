import 'package:openapi_demo_frontend/src/core/routing/app_router.dart';
import 'package:openapi_demo_frontend/src/datasource/http/dio_config.dart';
import 'package:openapi_demo_frontend/src/datasource/http/example_api.dart';
import 'package:openapi_demo_frontend/src/datasource/repositories/example_repository.dart';
import 'package:openapi_demo_frontend/src/datasource/repositories/todo_repository.dart';
import 'package:openapi_demo_frontend/src/shared/services/app_logger.dart';
import 'package:openapi_demo_frontend/src/shared/services/storage/local_storage.dart';
import 'package:openapi_demo_frontend/src/shared/services/storage/storage.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance
  ..registerLazySingleton(() => DioConfig())
  ..registerLazySingleton(() => AppRouter())
  ..registerLazySingleton<AppLogger>(() => AppLogger())
  ..registerLazySingleton<Storage>(() => LocalStorage())
  ..registerLazySingleton(() => ExampleApi(dio: locator<DioConfig>().dio))
  ..registerLazySingleton(() => ExampleRepository())
  ..registerLazySingleton(() => TodoRepository());
