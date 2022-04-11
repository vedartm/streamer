import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streamer/core/injection/injection.dart';
import 'package:streamer/core/ui/dimens.dart';
import 'package:streamer/core/ui/spacers.dart';
import 'package:streamer/core/ui/widgets.dart';
import 'package:streamer/features/player/ui/widgets/video_card.dart';

import '../cubits/home/home_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Browse')),
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: getIt()..fetchVideos(),
        builder: (context, state) => state.map(
          loading: (s) => const PLoader(),
          failed: (s) => const PError(),
          success: (s) => ListView.separated(
            padding: const EdgeInsets.all(PDimens.padding),
            itemCount: s.videos.length,
            separatorBuilder: (context, index) => PSpacers.height16,
            itemBuilder: (context, index) => VideoCard(video: s.videos[index]),
          ),
        ),
      ),
    );
  }
}
