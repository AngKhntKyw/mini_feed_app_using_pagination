import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mini_feed_app/utils/util/thumbnail_generator.dart';
import 'package:mini_feed_app/widgets/feed_page/video_player_widget.dart';

class VideoThumbnailWidget extends StatefulWidget {
  final String videoUrl;
  const VideoThumbnailWidget({super.key, required this.videoUrl});

  @override
  State<VideoThumbnailWidget> createState() => _VideoThumbnailWidgetState();
}

class _VideoThumbnailWidgetState extends State<VideoThumbnailWidget> {
  bool watchVideo = false;
  late String filePath;
  bool loading = true;

  @override
  void initState() {
    genThumb();
    super.initState();
  }

  @override
  void dispose() {
    watchVideo = false;
    super.dispose();
  }

  void genThumb() async {
    await ThumbnailGenerator.generateThumbnail(widget.videoUrl).then(
      (value) {
        setState(() {
          filePath = value;
          loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return watchVideo
        ? VideoPlayerWidget(videoUrl: widget.videoUrl)
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: loading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.file(
                            File(filePath),
                            fit: BoxFit.fitWidth,
                            width: MediaQuery.sizeOf(context).width,
                            filterQuality: FilterQuality.low,
                          ),
                          Container(color: Colors.black.withOpacity(0.4)),
                          InkWell(
                            onTap: () {
                              setState(() {
                                watchVideo = !watchVideo;
                              });
                            },
                            child: const Icon(
                              Icons.play_arrow,
                              size: 60,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          );
  }
}
