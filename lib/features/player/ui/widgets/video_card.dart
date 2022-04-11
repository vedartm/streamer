import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:streamer/core/router/router.dart';
import 'package:streamer/core/ui/dimens.dart';
import 'package:streamer/core/ui/spacers.dart';
import 'package:streamer/features/player/models/video.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key? key, required this.video}) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(PlayerRoute(video: video)),
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(PDimens.borderRadius),
                    child: CachedNetworkImage(
                      imageUrl: video.thumbnailUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            PSpacers.height12,
            Text(
              video.title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            PSpacers.height4,
            Text(
              video.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            PSpacers.height12,
          ],
        ),
      ),
    );
  }
}
