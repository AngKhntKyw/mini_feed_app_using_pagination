import 'package:flutter/material.dart';
import 'package:mini_feed_app/service/model/comment.dart';
import 'package:mini_feed_app/service/model/comment_list.dart';
import 'package:mini_feed_app/service/model/feed.dart';
import 'package:mini_feed_app/service/model/reply_list.dart';
import 'package:mini_feed_app/service/service/feed_service.dart';

class FeedProvider extends ChangeNotifier {
  // Feed
  List<Feed> _allFeedList = [];
  List<Feed> get allFeedList => _allFeedList;
  bool? _allFeedListHasNextpage;
  bool? get allFeedListHasNextPage => _allFeedListHasNextpage;
  String? _allFeedListCursor;
  String? get allFeedListCursor => _allFeedListCursor;

  Future<void> getFeeds({required String? cursor}) async {
    final result = await FeedService.getFeeds(cursor: cursor);
    _allFeedList.addAll(result.data);
    _allFeedListHasNextpage = result.has_next_page;
    _allFeedListCursor = result.cursor;
    notifyListeners();
  }

  void refreshFeed() {
    _allFeedList.clear();
    _allFeedListCursor = null;
    _allFeedListHasNextpage = null;
    getFeeds(cursor: null);
  }

  // Feed Detail
  Feed? _currentFeed;
  Feed? get currentFeed => _currentFeed;

  Future<void> getFeedById({required int feedId}) async {
    final result = await FeedService.getFeedById(feedId: feedId);
    _currentFeed = result;
    _currentFeed!.comment_list = CommentList(data: [], has_next_page: false);
    notifyListeners();
  }

  void clearFeedDetail() {
    _currentFeed = null;
  }

  // Comment
  Future<void> getCommentsOfAFeed(
      {required int feedId, required String? cursor}) async {
    final result =
        await FeedService.getCommentsOfAFeed(feedId: feedId, cursor: cursor);
    _currentFeed!.comment_list!.cursor = result.cursor;
    _currentFeed!.comment_list!.has_next_page = result.has_next_page;
    _currentFeed!.comment_list!.data.addAll(result.data);
    for (Comment cmt in result.data) {
      cmt.reply_list = ReplyList(data: [], has_next_page: false);
    }
    notifyListeners();
  }

  Future<void> commentToAFeed(
      {required int feedId, required String comment}) async {
    final result =
        await FeedService.commentToAFeed(feedId: feedId, comment: comment);
    result.reply_list = ReplyList(data: [], has_next_page: false);
    _currentFeed!.comment_list!.data.insert(0, result);
    _currentFeed!.comment_count++;
    for (Feed fd in _allFeedList) {
      if (fd.id == feedId) {
        fd.comment_count++;
      }
    }
    notifyListeners();
  }

  // Reply
  Future<void> getRepliesOfAComment(
      {required int commentId, required String? cursor}) async {
    final result = await FeedService.getRepliesOFAComment(
        commentId: commentId, cursor: cursor);

    for (Comment cmt in _currentFeed!.comment_list!.data) {
      if (cmt.id == commentId) {
        cmt.reply_list!.data.addAll(result.data);
        cmt.reply_list!.cursor = result.cursor;
        cmt.reply_list!.has_next_page = result.has_next_page;
      }
    }
    notifyListeners();
  }

  Future<void> replyToAComment(
      {required int feedId,
      required int commentId,
      required String reply}) async {
    final result =
        await FeedService.replyToAComment(commentId: commentId, reply: reply);

    for (Comment cmt in _currentFeed!.comment_list!.data) {
      if (cmt.id == commentId) {
        cmt.reply_count++;
        cmt.reply_list!.data.insert(0, result);
      }
    }
    _currentFeed!.comment_count++;
    for (Feed fd in _allFeedList) {
      if (fd.id == feedId) {
        fd.comment_count++;
      }
    }
    notifyListeners();
  }

  Future<void> likeOrUnlikeToAFeed({required int feedId}) async {
    final result = await FeedService.likeOrUnlikeToAFeed(feedId: feedId);
    if (result) {
      for (Feed feed in _allFeedList) {
        if (feed.id == feedId) {
          feed.is_liked ? feed.like_count + 1 : feed.like_count - 1;
        }
      }
    }
    notifyListeners();
  }
}
