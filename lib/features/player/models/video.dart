import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/models/user.dart';

part 'video.freezed.dart';

@freezed
class Video with _$Video {
  const factory Video({
    required String id,
    required String title,
    required String description,
    required String thumbnailUrl,
    required String mediaUrl,
    required int viewsCount,
    required User creator,
    required DateTime createdAt,
  }) = _Video;
}
