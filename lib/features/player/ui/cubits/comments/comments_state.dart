part of 'comments_cubit.dart';

@freezed
class CommentsState with _$CommentsState {
  const factory CommentsState.loading() = _Loading;
  const factory CommentsState.failed(Failure failure) = _Failed;
  const factory CommentsState.success({
    required List<Comment> comments,
    required String content,
  }) = _Success;
}
