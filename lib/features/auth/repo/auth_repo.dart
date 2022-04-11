import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:streamer/features/auth/models/user.dart';
import 'package:streamer/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:streamer/features/auth/repo/i_auth_repo.dart';

@LazySingleton(as: IAuthRepo)
class AuthRepo implements IAuthRepo {
  AuthRepo(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<Either<Failure, User>> fetchLoggedInUser() async {
    final userJson = _prefs.getString('LoggedInUser');
    if (userJson == null) return const Left(Failure.unauthenticated());
    return Right(User.fromMap(json.decode(userJson)));
  }

  @override
  Future<Either<Failure, User>> loginUser(String email, String password) async {
    final user = User(
      id: 'id',
      name: 'name',
      email: email,
    );
    final userJson = json.encode(user.toMap());
    await _prefs.setString('LoggedInUser', userJson);
    return Right(user);
  }

  @override
  Future<Either<Failure, Unit>> logoutUser() async {
    await _prefs.clear();
    return const Right(unit);
  }

  @override
  Future<Either<Failure, User>> registerUser(
    String name,
    String email,
    String password,
  ) async {
    // TODO: implement registerUser
    return const Right(User(id: '', name: '', email: ''));
  }
}
