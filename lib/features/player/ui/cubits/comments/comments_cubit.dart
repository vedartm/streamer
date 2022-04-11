import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:streamer/core/error/failures.dart';
import 'package:streamer/features/player/repo/i_player_repo.dart';

import '../../../models/comment.dart';
import '../../../models/video.dart';

part 'comments_state.dart';
part 'comments_cubit.freezed.dart';

@injectable
class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit(this._repo) : super(const CommentsState.loading());

  final IPlayerRepo _repo;

  void fetchComments(Video video) async {
    final result = await _repo.fetchComments(video);
    result.fold(
      (l) => emit(CommentsState.failed(l)),
      (r) => emit(CommentsState.success(comments: r, content: '')),
    );
  }

  void onCommentChanged(String text) {
    state.maybeMap(
      orElse: () => null,
      success: (s) {
        emit(s.copyWith(content: text));
      },
    );
  }

  void submitComment(Video video) async {
    state.maybeMap(
      orElse: () => null,
      success: (s) async {
        if (s.content.isEmpty) return;
        final result = await _repo.createComment(s.content, video);
        final list = List<Comment>.from(s.comments);
        result.fold((l) => null, (r) => list.insert(0, r));
        emit(s.copyWith(content: '', comments: list));
      },
    );
  }
}
