import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streamer/core/injection/injection.dart';
import 'package:streamer/core/ui/colors.dart';
import 'package:streamer/core/ui/dimens.dart';
import 'package:streamer/core/ui/spacers.dart';
import 'package:streamer/core/ui/widgets.dart';
import 'package:streamer/features/player/models/video.dart';
import 'package:streamer/features/player/ui/widgets/video_card.dart';

import '../cubits/home/home_cubit.dart';
import '../widgets/comments_sheet.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key, required this.video}) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              video.mediaUrl,
              betterPlayerConfiguration: const BetterPlayerConfiguration(
                aspectRatio: 16 / 9,
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<HomeCubit, HomeState>(
              bloc: getIt()..fetchSimilarVideos(video),
              builder: (context, state) => state.map(
                loading: (s) => const PLoader(),
                failed: (s) => const PError(),
                success: (s) => ListView(
                  padding: const EdgeInsets.all(PDimens.padding),
                  children: [
                    Text(
                      video.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    PSpacers.height12,
                    Text(
                      video.description,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    PSpacers.height12,
                    OutlinedButton(
                      child: const Text('Show comments'),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => CommentsSheet(video: video),
                      ),
                    ),
                    PSpacers.height20,
                    Text(
                      'Similar videos',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          ?.copyWith(color: PColors.textPrimary),
                    ),
                    PSpacers.height12,
                    ...List.generate(
                      s.videos.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: VideoCard(video: s.videos[index]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
