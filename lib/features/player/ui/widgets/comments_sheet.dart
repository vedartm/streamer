import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:streamer/core/injection/injection.dart';
import 'package:streamer/core/ui/spacers.dart';
import 'package:streamer/core/ui/widgets.dart';
import 'package:streamer/features/player/models/video.dart';

import '../cubits/comments/comments_cubit.dart';

class CommentsSheet extends StatelessWidget {
  const CommentsSheet({Key? key, required this.video}) : super(key: key);
  final Video video;

  @override
  Widget build(BuildContext context) {
    final _cubit = getIt<CommentsCubit>();
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          PSpacers.height20,
          Text(
            'Comments',
            style: Theme.of(context).textTheme.headline6,
          ),
          PSpacers.height20,
          Expanded(
            child: BlocBuilder<CommentsCubit, CommentsState>(
              bloc: _cubit..fetchComments(video),
              builder: (context, state) => state.map(
                loading: (s) => const PLoader(),
                failed: (s) => const PError(),
                success: (s) => ListView.builder(
                  itemCount: s.comments.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(
                      s.comments[index].content,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    subtitle: Text(
                      'By ${s.comments[index].author.name}',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: _cubit.onCommentChanged,
              decoration: InputDecoration(
                hintText: 'Comment here...',
                suffixIcon: IconButton(
                  onPressed: () => _cubit.submitComment(video),
                  icon: const Icon(Icons.send),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
