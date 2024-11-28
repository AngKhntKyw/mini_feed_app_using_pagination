import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';

class ThumbnailGenerator {
  static final cache = DefaultCacheManager();

  static Future<String> generateThumbnail(String videoUrl) async {
    // Retrieve the temporary directory on the main isolate
    final directory = await getTemporaryDirectory();

    // Generate a unique hash for the video URL on the main isolate
    final videohash = md5.convert(utf8.encode(videoUrl)).toString();
    final thumbnailPath = '${directory.path}/thumbnail_$videohash.jpg';

    // Check if the thumbnail is already cached
    final cachedFile = await cache.getFileFromCache(thumbnailPath);
    if (cachedFile != null) {
      return cachedFile.file.path;
    }

    // Execute the FFmpeg command on the main isolate
    final command =
        '-i $videoUrl -ss 00:00:01.000 -vframes 1 -vf scale=320:-1 $thumbnailPath';
    await FFmpegKit.execute(command);

    // Cache the generated thumbnail
    final thumbnailFile = File(thumbnailPath);
    if (await thumbnailFile.exists()) {
      await cache.putFile(thumbnailPath, await thumbnailFile.readAsBytes());
    } else {
      throw Exception('Thumbnail generation failed');
    }

    return thumbnailPath;
  }
}
