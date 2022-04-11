import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:streamer/core/router/auth_guard.dart';

import '../../features/auth/ui/pages/login_page.dart';
import '../../features/auth/ui/pages/splash_page.dart';
import '../../features/player/models/video.dart';
import '../../features/player/ui/pages/home_page.dart';
import '../../features/player/ui/pages/player_page.dart';

part 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: HomePage, guards: [AuthGuard]),
    AutoRoute(page: PlayerPage, guards: [AuthGuard]),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
