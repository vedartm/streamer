import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies(String env) =>
    $initGetIt(getIt, environment: env);
