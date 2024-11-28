import 'package:flutter/material.dart';
import 'package:mini_feed_app/provider/feed_provider.dart';
import 'package:mini_feed_app/widgets/feed_page/comment_widget.dart';
import 'package:mini_feed_app/widgets/feed_page/shimmer_loading_widget.dart';
import 'package:provider/provider.dart';

class CommentListWidget extends StatefulWidget {
  final ScrollController scrollController;

  const CommentListWidget({super.key, required this.scrollController});

  @override
  State<CommentListWidget> createState() => _CommentListWidgetState();
}

class _CommentListWidgetState extends State<CommentListWidget> {
  bool initialLoading = true;

  @override
  void initState() {
    getCommentsOFAfeed();
    widget.scrollController.addListener(loadMoreComments);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return initialLoading
        ? ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ShimmerLoadingWidget(),
              );
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: context
                .watch<FeedProvider>()
                .currentFeed!
                .comment_list!
                .data
                .length,
            itemBuilder: (context, index) {
              final comment = context
                  .watch<FeedProvider>()
                  .currentFeed!
                  .comment_list!
                  .data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    CommentWidget(comment: comment),
                    if (index ==
                            context
                                    .watch<FeedProvider>()
                                    .currentFeed!
                                    .comment_list!
                                    .data
                                    .length -
                                1 &&
                        context
                            .watch<FeedProvider>()
                            .currentFeed!
                            .comment_list!
                            .has_next_page)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: CircularProgressIndicator(),
                        ),
                      ),
                  ],
                ),
              );
            },
          );
  }

  void loadMoreComments() {
    if (widget.scrollController.position.pixels ==
            widget.scrollController.position.maxScrollExtent &&
        context.read<FeedProvider>().currentFeed!.comment_list!.has_next_page) {
      context.read<FeedProvider>().getCommentsOfAFeed(
          feedId: context.read<FeedProvider>().currentFeed!.id,
          cursor:
              context.read<FeedProvider>().currentFeed!.comment_list!.cursor);
    }
  }

  void getCommentsOFAfeed() async {
    // await Future.delayed(const Duration(seconds: 5));
    context.read<FeedProvider>().getCommentsOfAFeed(
        feedId: context.read<FeedProvider>().currentFeed!.id, cursor: null);
    setState(() {
      initialLoading = false;
    });
  }
}
