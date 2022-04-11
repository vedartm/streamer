import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streamer/core/injection/injection.dart';
import 'package:streamer/core/router/router.dart';
import 'package:streamer/core/ui/dimens.dart';
import 'package:streamer/core/ui/spacers.dart';
import 'package:streamer/core/ui/widgets.dart';

import '../cubits/login/login_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cubit = getIt<LoginCubit>();
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        bloc: _cubit,
        builder: (context, state) => Center(
          child: Card(
            margin: const EdgeInsets.all(PDimens.padding),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    decoration: const InputDecoration(hintText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: _cubit.onEmailChanged,
                  ),
                  PSpacers.height16,
                  TextField(
                    decoration: const InputDecoration(hintText: 'Password'),
                    obscureText: true,
                    onChanged: _cubit.onPasswordChanged,
                  ),
                  PSpacers.height20,
                  ElevatedButton(
                    child:
                        state.isLoading ? const PLoader() : const Text('Login'),
                    onPressed: state.isLoading
                        ? null
                        : () async {
                            final result = await _cubit.loginUser();
                            result.fold(
                              (l) => ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Sorry! Some error occurred'),
                                ),
                              ),
                              (r) => AutoRouter.of(context)
                                  .replace(const HomeRoute()),
                            );
                          },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
