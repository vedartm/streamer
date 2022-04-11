import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/router/router.dart';
import '../cubits/auth/auth_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.map(
          authenticating: (s) => null,
          authenticated: (s) =>
              AutoRouter.of(context).replace(const HomeRoute()),
          unauthenticated: (s) =>
              AutoRouter.of(context).replace(const LoginRoute()),
        );
      },
      child: const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
