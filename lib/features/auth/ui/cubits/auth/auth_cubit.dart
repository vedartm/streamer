import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../models/user.dart';
import '../../../repo/i_auth_repo.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._repo) : super(const AuthState.authenticating());

  final IAuthRepo _repo;

  void checkAuthStatus() async {
    final failureOrSuccess = await _repo.fetchLoggedInUser();
    emit(failureOrSuccess.fold(
      (l) => const AuthState.unauthenticated(),
      AuthState.authenticated,
    ));
  }
}
