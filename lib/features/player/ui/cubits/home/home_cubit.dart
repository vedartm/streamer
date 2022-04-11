import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:streamer/core/error/failures.dart';
import 'package:streamer/features/player/repo/i_player_repo.dart';

import '../../../models/video.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repo) : super(const HomeState.loading());

  final IPlayerRepo _repo;

  void fetchVideos() async {
    final result = await _repo.fetchVideos();
    result.fold(
      (l) => emit(HomeState.failed(l)),
      (r) => emit(HomeState.success(r)),
    );
  }

  void fetchSimilarVideos(Video video) async {
    final result = await _repo.fetchSimilarVideos(video);
    result.fold(
      (l) => emit(HomeState.failed(l)),
      (r) => emit(HomeState.success(r)),
    );
  }
}
