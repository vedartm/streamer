import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class MyModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @dev
  @lazySingleton
  Logger get loggerDev =>
      Logger(printer: PrettyPrinter(lineLength: 80, methodCount: 1));

  @prod
  @lazySingleton
  Logger get loggerProd => Logger(printer: null);
}
