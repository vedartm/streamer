// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../features/auth/repo/auth_repo.dart' as _i6;
import '../../features/auth/repo/i_auth_repo.dart' as _i5;
import '../../features/auth/ui/cubits/auth/auth_cubit.dart' as _i10;
import '../../features/auth/ui/cubits/login/login_cubit.dart' as _i9;
import '../../features/player/repo/i_player_repo.dart' as _i7;
import '../../features/player/repo/player_repo.dart' as _i8;
import '../../features/player/ui/cubits/comments/comments_cubit.dart' as _i11;
import '../../features/player/ui/cubits/home/home_cubit.dart' as _i12;
import 'module.dart' as _i13;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final myModule = _$MyModule();
  gh.lazySingleton<_i3.Logger>(() => myModule.loggerDev, registerFor: {_dev});
  gh.lazySingleton<_i3.Logger>(() => myModule.loggerProd, registerFor: {_prod});
  await gh.lazySingletonAsync<_i4.SharedPreferences>(() => myModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i5.IAuthRepo>(
      () => _i6.AuthRepo(get<_i4.SharedPreferences>()));
  gh.lazySingleton<_i7.IPlayerRepo>(
      () => _i8.PlayerRepo(get<_i4.SharedPreferences>()));
  gh.factory<_i9.LoginCubit>(() => _i9.LoginCubit(get<_i5.IAuthRepo>()));
  gh.factory<_i10.AuthCubit>(() => _i10.AuthCubit(get<_i5.IAuthRepo>()));
  gh.factory<_i11.CommentsCubit>(
      () => _i11.CommentsCubit(get<_i7.IPlayerRepo>()));
  gh.factory<_i12.HomeCubit>(() => _i12.HomeCubit(get<_i7.IPlayerRepo>()));
  return get;
}

class _$MyModule extends _i13.MyModule {}
