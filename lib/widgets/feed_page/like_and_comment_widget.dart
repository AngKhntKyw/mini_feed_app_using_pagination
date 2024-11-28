import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mini_feed_app/provider/feed_provider.dart';
import 'package:mini_feed_app/service/model/feed.dart';
import 'package:provider/provider.dart';

class LikeAndCommentWidget extends StatefulWidget {
  final Feed feed;
  const LikeAndCommentWidget({super.key, required this.feed});

  @override
  State<LikeAndCommentWidget> createState() => _LikeAndCommentWidgetState();
}

class _LikeAndCommentWidgetState extends State<LikeAndCommentWidget> {
  Timer? _timer;
  bool like = false;

  @override
  void initState() {
    like = widget.feed.is_liked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.favorite, size: 20),
                const SizedBox(width: 5),
                AutoSizeText("${widget.feed.like_count}"),
              ],
            ),
            Row(
              children: [
                AutoSizeText("${widget.feed.comment_count}"),
                const SizedBox(width: 5),
                const AutoSizeText("comments"),
              ],
            ),
          ],
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.feed.is_liked = !widget.feed.is_liked;
                        widget.feed.is_liked
                            ? widget.feed.like_count++
                            : widget.feed.like_count--;
                      });

                      _timer ??= Timer(const Duration(seconds: 3), () async {
                        if (widget.feed.is_liked != like) {
                          await context
                              .read<FeedProvider>()
                              .likeOrUnlikeToAFeed(feedId: widget.feed.id);
                        }

                        _timer = null;
                      });
                    },
                    child: Icon(
                      widget.feed.is_liked
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      color:
                          widget.feed.is_liked ? Colors.lightBlue : Colors.grey,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 5),
                  AutoSizeText("${widget.feed.like_count}"),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.comment, size: 20),
                  const SizedBox(width: 5),
                  AutoSizeText("${widget.feed.comment_count}"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
