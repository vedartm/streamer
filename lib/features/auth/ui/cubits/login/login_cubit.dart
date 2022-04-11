import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:streamer/features/auth/repo/i_auth_repo.dart';

import '../../../../../core/error/failures.dart';
import '../../../models/user.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repo) : super(LoginState.initial());
  final IAuthRepo _repo;

  void onEmailChanged(String text) {
    emit(state.copyWith(email: text));
  }

  void onPasswordChanged(String text) {
    emit(state.copyWith(password: text));
  }

  Future<Either<Failure, User>> loginUser() async {
    emit(state.copyWith(isLoading: true));
    final result = await _repo.loginUser(state.email, state.password);
    emit(state.copyWith(isLoading: false));
    return result;
  }
}
