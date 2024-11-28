import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController videoPlayerController;
  late BetterPlayerController betterPlayerController;
  late BetterPlayerDataSource betterPlayerDataSource;
  late BetterPlayerConfiguration betterPlayerConfiguration;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    setUpPlayerController();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    betterPlayerController.dispose();
    super.dispose();
  }

  void setUpPlayerController() {
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    )..initialize().then((_) {
        betterPlayerDataSource = BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          widget.videoUrl,
          cacheConfiguration: BetterPlayerCacheConfiguration(
            key: widget.videoUrl,
            useCache: true,
            preCacheSize: 10 * 2024 * 2024,
            maxCacheSize: 10 * 1024 * 1024,
            maxCacheFileSize: 50 * 1024 * 1024,
          ),
          bufferingConfiguration: const BetterPlayerBufferingConfiguration(
            minBufferMs: 20000,
            maxBufferMs: 50000,
            bufferForPlaybackMs: 2500,
            bufferForPlaybackAfterRebufferMs: 5000,
          ),
        );

        //
        betterPlayerConfiguration = BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
          controlsConfiguration: const BetterPlayerControlsConfiguration(
            loadingWidget: CircularProgressIndicator(),
            backgroundColor: Colors.white,
            controlBarColor: Colors.transparent,
            enablePip: false,
            enableSubtitles: false,
            enableAudioTracks: false,
            enableSkips: true,
            progressBarBackgroundColor: Colors.white,
            progressBarBufferedColor: Colors.grey,
            enableMute: true,
            enableFullscreen: true,
            iconsColor: Colors.white,
            enableRetry: true,
          ),
          autoDetectFullscreenDeviceOrientation: false,
          autoDetectFullscreenAspectRatio: false,
          fullScreenByDefault: false,
          overlay: Container(color: Colors.black.withOpacity(0.10)),
          placeholderOnTop: true,
          showPlaceholderUntilPlay: true,
          autoDispose: true,
          autoPlay: true,
          subtitlesConfiguration: const BetterPlayerSubtitlesConfiguration(
            fontSize: 10,
          ),
        );

        betterPlayerController = BetterPlayerController(
          betterPlayerConfiguration,
          betterPlayerDataSource: betterPlayerDataSource,
        );
        setState(() {
          isLoading = false;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return !isLoading && videoPlayerController.value.isInitialized
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: VisibilityDetector(
              key: Key(widget.videoUrl),
              onVisibilityChanged: (info) async {
                if (info.visibleFraction == 0) {
                  await betterPlayerController.pause();
                } else {
                  betterPlayerController.setControlsVisibility(true);
                  betterPlayerController.isPlaying()!
                      ? await betterPlayerController.pause()
                      : null;
                }
              },
              child: AspectRatio(
                aspectRatio: videoPlayerController.value.aspectRatio,
                child: BetterPlayer(controller: betterPlayerController),
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: size.height / 3,
            width: size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CircularProgressIndicator(),
          );
  }
}
