import 'package:dartz/dartz.dart';
import 'package:streamer/core/error/failures.dart';
import 'package:streamer/features/auth/models/user.dart';

abstract class IAuthRepo {
  Future<Either<Failure, User>> fetchLoggedInUser();

  Future<Either<Failure, User>> loginUser(String email, String password);

  Future<Either<Failure, User>> registerUser(
      String name, String email, String password);

  Future<Either<Failure, Unit>> logoutUser();
}
