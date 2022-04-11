import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streamer/core/router/auth_guard.dart';

import 'core/injection/injection.dart';
import 'core/router/router.dart';
import 'core/ui/themes.dart';
import 'features/auth/ui/cubits/auth/auth_cubit.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthCubit>()..checkAuthStatus()),
      ],
      child: MaterialApp.router(
        title: 'Streamer',
        theme: PThemes.dayTheme,
        darkTheme: PThemes.nightTheme,
        themeMode: ThemeMode.light,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
