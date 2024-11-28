import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:mini_feed_app/pages/feed_page/feed_detail_page.dart';
import 'package:mini_feed_app/service/model/feed.dart';
import 'package:mini_feed_app/widgets/feed_page/like_and_comment_widget.dart';
import 'package:mini_feed_app/widgets/feed_page/video_thumbnail_widget.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedCard extends StatelessWidget {
  final Feed feed;
  const FeedCard({super.key, required this.feed});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return InkWell(
      autofocus: true,
      onTap: () {
        Flexify.go(FeedDetailPage(feedId: feed.id),
            animation: FlexifyRouteAnimations.slide,
            animationDuration: const Duration(milliseconds: 300));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 6),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                autofocus: true,
                leading: CircleAvatar(
                  child: CachedNetworkImage(imageUrl: feed.owner.profile_url!),
                ),
                title: AutoSizeText(feed.owner.username),
                trailing: AutoSizeText(
                  timeago.format(DateTime.parse(feed.created_at)),
                ),
              ),
              AutoSizeText(
                feed.body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (feed.media_type == "PHOTO")
                CachedNetworkImage(
                  imageUrl: feed.media_url!,
                  cacheKey: feed.media_url,
                  imageBuilder: (context, imageProvider) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
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
                  progressIndicatorBuilder: (context, url, progress) {
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              if (feed.media_type == "VIDEO")
                VideoThumbnailWidget(videoUrl: feed.media_url!),
              LikeAndCommentWidget(feed: feed)
            ],
          ),
        ),
      ),
    );
  }
}
