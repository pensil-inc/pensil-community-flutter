import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/http/dio_client.dart';
// ignore: always_use_package_imports
import 'injection.config.dart';

/// The injector for the application.
final getIt = GetIt.instance;
final logger = Logger('log');

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)

/// Initializes the [GetIt] instance.
void configureDependencies() => $initGetIt(getIt, environment: 'dev');

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio(BaseOptions(baseUrl: Endpoint.baseUrl));

  @lazySingleton
  DioClient get dioClient => DioClient(getIt<Dio>());

  @lazySingleton
  Connectivity connectivity() => Connectivity();
}
