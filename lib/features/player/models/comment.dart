import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:streamer/features/auth/models/user.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String content,
    required DateTime createdAt,
    required User author,
  }) = _Comment;
}
