import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:potfolio/portfolio/di/injector.config.dart';

final getIt = GetIt.instance;
@InjectableInit(preferRelativeImports: true)
void configureDependencies() {
  getIt.registerSingleton<InternetConnectionChecker>(InternetConnectionChecker());
  getIt.init();
}
