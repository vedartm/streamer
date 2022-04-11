part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.failed(Failure failure) = _Failed;
  const factory HomeState.success(List<Video> videos) = _Success;
}
