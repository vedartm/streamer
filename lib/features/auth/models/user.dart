import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
  }) = _User;

  factory User.fromMap(dynamic map) => User(
        id: map['id'],
        name: map['name'],
        email: map['email'],
      );
}

extension UserX on User {
  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
      };
}
