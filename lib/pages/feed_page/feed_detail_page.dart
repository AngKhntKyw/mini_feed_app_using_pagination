import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mini_feed_app/provider/feed_input_provider.dart';
import 'package:mini_feed_app/provider/feed_provider.dart';
import 'package:mini_feed_app/widgets/feed_page/comment_list_widget.dart';
import 'package:mini_feed_app/widgets/feed_page/like_and_comment_widget.dart';
import 'package:mini_feed_app/widgets/feed_page/video_thumbnail_widget.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedDetailPage extends StatefulWidget {
  final int feedId;
  const FeedDetailPage({super.key, required this.feedId});

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  late final ScrollController scrollController;
  TextEditingController textEditingController = TextEditingController();
  FocusNode textFocusNode = FocusNode();

  @override
  void initState() {
    getFeedById();
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    clearFeedDetail();
    disposeController();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return context.watch<FeedProvider>().currentFeed == null
        ? const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(context
                        .watch<FeedProvider>()
                        .currentFeed!
                        .owner
                        .profile_url!),
                  ),
                  AutoSizeText(context
                      .watch<FeedProvider>()
                      .currentFeed!
                      .owner
                      .username),
                ],
              ),
              actions: [
                AutoSizeText(timeago.format(DateTime.parse(
                    context.watch<FeedProvider>().currentFeed!.created_at))),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            context.watch<FeedProvider>().currentFeed!.body,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (context
                                  .watch<FeedProvider>()
                                  .currentFeed!
                                  .media_type ==
                              "PHOTO")
                            CachedNetworkImage(
                              imageUrl: context
                                  .watch<FeedProvider>()
                                  .currentFeed!
                                  .media_url!,
                              cacheKey: context
                                  .watch<FeedProvider>()
                                  .currentFeed!
                                  .media_url,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                height: size.height / 3,
                                width: size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              progressIndicatorBuilder:
                                  (context, url, progress) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          if (context
                                  .watch<FeedProvider>()
                                  .currentFeed!
                                  .media_type ==
                              "VIDEO")
                            VideoThumbnailWidget(
                                videoUrl: context
                                    .watch<FeedProvider>()
                                    .currentFeed!
                                    .media_url!),
                          LikeAndCommentWidget(
                              // feed: context.watch<FeedProvider>().currentFeed!),
                              feed: context
                                  .watch<FeedProvider>()
                                  .allFeedList
                                  .firstWhere(
                                    (element) => element.id == widget.feedId,
                                  )),
                          const Divider(),
                          CommentListWidget(scrollController: scrollController),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: context
                                .watch<FeedInputProvider>()
                                .textEditingController,
                            focusNode: context
                                .watch<FeedInputProvider>()
                                .textFocusNode,
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus!.unfocus();
                            },
                            onChanged: (v) =>
                                context.read<FeedInputProvider>().typing(),
                          ),
                        ),
                        IconButton(
                          onPressed: context
                              .read<FeedInputProvider>()
                              .onPressedSendButton,
                          icon: const Icon(Icons.send),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  void getFeedById() async {
    await context.read<FeedProvider>().getFeedById(feedId: widget.feedId);
    initTextEditingController();
  }

  void clearFeedDetail() {
    context.read<FeedProvider>().clearFeedDetail();
  }

  void disposeController() {
    context.read<FeedInputProvider>().disposeController();
  }

  void initTextEditingController() {
    context.read<FeedInputProvider>().initializeTextEditingController(
          textEditingController,
          textFocusNode,
          widget.feedId,
          context,
        );
  }
}
