import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:streamer/features/auth/models/user.dart';
import 'package:streamer/features/player/models/video.dart';
import 'package:streamer/features/player/models/comment.dart';
import 'package:streamer/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:streamer/features/player/repo/i_player_repo.dart';

@LazySingleton(as: IPlayerRepo)
class PlayerRepo implements IPlayerRepo {
  PlayerRepo(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<Either<Failure, Comment>> createComment(
      String comment, Video video) async {
    final userJson = _prefs.getString('LoggedInUser') ?? '';
    final user = User.fromMap(json.decode(userJson));
    return Right(
      Comment(
        id: 'id',
        content: comment,
        createdAt: DateTime.now(),
        author: user,
      ),
    );
  }

  @override
  Future<Either<Failure, List<Comment>>> fetchComments(Video video) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Right(
      List.generate(
        5,
        (index) => Comment(
          id: 'id$index',
          content: 'This is a comment $index',
          createdAt: DateTime.now(),
          author: User(
            id: 'id$index',
            name: 'User $index',
            email: 'user$index@email.com',
          ),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, List<Video>>> fetchSimilarVideos(Video video) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Right(
      List.generate(
        5,
        (index) => Video(
          id: 'id$index',
          title: 'Video title $index',
          description: 'Video description $index',
          thumbnailUrl:
              // 'http://cdn.collider.com/wp-content/uploads/2015/06/game-of-thrones-hardhome-night-king.jpg',
              'https://picsum.photos/id/21$index/800/450',
          mediaUrl:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
          viewsCount: 10,
          creator: User(
            id: 'id$index',
            name: 'User $index',
            email: 'user$index@email.com',
          ),
          createdAt: DateTime.now(),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, List<Video>>> fetchVideos() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return Right(
      List.generate(
        10,
        (index) => Video(
          id: 'id$index',
          title: 'Video title $index',
          description: 'Video description $index',
          thumbnailUrl:
              // 'http://cdn.collider.com/wp-content/uploads/2015/06/game-of-thrones-hardhome-night-king.jpg',
              'https://picsum.photos/id/31$index/800/450',
          mediaUrl:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
          viewsCount: 10,
          creator: User(
            id: 'id$index',
            name: 'User $index',
            email: 'user$index@email.com',
          ),
          createdAt: DateTime.now(),
        ),
      ),
    );
  }
}
