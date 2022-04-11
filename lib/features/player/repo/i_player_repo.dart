import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../models/comment.dart';
import '../models/video.dart';

abstract class IPlayerRepo {
  Future<Either<Failure, List<Video>>> fetchVideos();

  Future<Either<Failure, List<Comment>>> fetchComments(Video video);

  Future<Either<Failure, Comment>> createComment(String comment, Video video);

  Future<Either<Failure, List<Video>>> fetchSimilarVideos(Video video);
}
