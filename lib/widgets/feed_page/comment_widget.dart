import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:comment_tree/widgets/tree_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:comment_tree/widgets/comment_tree_widget.dart';
import 'package:mini_feed_app/provider/feed_input_provider.dart';
import 'package:mini_feed_app/provider/feed_provider.dart';
import 'package:mini_feed_app/service/model/comment.dart';
import 'package:mini_feed_app/service/model/reply.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentWidget extends StatefulWidget {
  final Comment comment;
  const CommentWidget({super.key, required this.comment});

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  bool showReplies = false;
  bool initialLoading = true;

  @override
  void initState() {
    getRepliesOfAComment();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    Comment cmt = context
        .watch<FeedProvider>()
        .currentFeed!
        .comment_list!
        .data
        .firstWhere((element) => element.id == widget.comment.id);

    //
    return Skeletonizer(
      enabled: initialLoading,
      containersColor: Color.fromARGB(255, 211, 233, 244),
      enableSwitchAnimation: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommentTreeWidget<Comment, Reply>(
            treeThemeData: TreeThemeData(
              lineWidth: 1,
              lineColor: widget.comment.reply_count != 0
                  ? Colors.grey
                  : Colors.transparent,
            ),
            widget.comment,
            avatarRoot: (context, value) {
              return PreferredSize(
                preferredSize: const Size.fromRadius(20),
                child: CircleAvatar(
                  radius: 18,
                  backgroundImage: value.owner.profile_url == null
                      ? null
                      : CachedNetworkImageProvider(
                          value.owner.profile_url!,
                        ),
                ),
              );
            },
            contentRoot: (context, value) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(123, 158, 158, 158),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(value.owner.username),
                        AutoSizeText(value.body),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      AutoSizeText(
                          timeago.format(DateTime.parse(value.created_at))),
                      TextButton(
                        onPressed: () {
                          context
                              .read<FeedInputProvider>()
                              .initializeReply(value);
                        },
                        child: const AutoSizeText("Reply"),
                      ),
                    ],
                  )
                ],
              );
            },
            showReplies
                ? [
                    ...cmt.reply_list!.data.map(
                      (e) {
                        return e;
                      },
                    )
                  ]
                : [],
            avatarChild: (context, value) {
              return PreferredSize(
                preferredSize: const Size.fromRadius(20),
                child: cmt.reply_list!.data.isEmpty
                    ? CircularProgressIndicator()
                    : CircleAvatar(
                        radius: 14,
                        backgroundImage: value.owner.profile_url == null
                            ? null
                            : CachedNetworkImageProvider(
                                value.owner.profile_url!,
                              ),
                      ),
              );
            },
            contentChild: (context, value) {
              return cmt.reply_list!.data.isEmpty
                  ? CircularProgressIndicator()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(123, 158, 158, 158),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(value.owner.username),
                              AutoSizeText(value.body),
                            ],
                          ),
                        ),
                        AutoSizeText(
                          timeago.format(
                            DateTime.parse(value.created_at),
                          ),
                        ),
                      ],
                    );
            },
          ),
          cmt.reply_count == 0
              ? SizedBox.fromSize()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: toggleShowReplies,
                      child: AutoSizeText(showReplies
                          ? "Hide replies"
                          : "Show replies (${cmt.reply_count})"),
                    ),
                    cmt.reply_list!.has_next_page
                        ? InkWell(
                            onTap: loadMoreReplies,
                            child: const AutoSizeText("Load more"),
                          )
                        : SizedBox.fromSize(),
                  ],
                ),
        ],
      ),
    );
  }

  void getRepliesOfAComment() async {
    await Future.delayed(const Duration(milliseconds: 300));
    await context
        .read<FeedProvider>()
        .getRepliesOfAComment(commentId: widget.comment.id, cursor: null);
    setState(() {
      initialLoading = false;
    });
  }

  void loadMoreReplies() {
    Comment cmt = context
        .read<FeedProvider>()
        .currentFeed!
        .comment_list!
        .data
        .firstWhere((element) => element.id == widget.comment.id);

    if (cmt.reply_list!.has_next_page) {
      context.read<FeedProvider>().getRepliesOfAComment(
          commentId: widget.comment.id, cursor: cmt.reply_list!.cursor);
    }
  }

  void toggleShowReplies() {
    setState(() {
      showReplies = !showReplies;
    });
  }
}
