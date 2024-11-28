import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mini_feed_app/provider/feed_provider.dart';
import 'package:mini_feed_app/service/model/comment.dart';

class FeedInputProvider extends ChangeNotifier {
  //
  TextEditingController? _textEditingController;
  TextEditingController? get textEditingController => _textEditingController;

  FocusNode? _textFocusNode;
  FocusNode? get textFocusNode => _textFocusNode;

  int? _currentFeedId;
  int? get currentFeedId => _currentFeedId;

  Comment? _currentComment;
  Comment? get currentComment => _currentComment;

  final List<Comment> _currentCommentList = [];
  List<Comment> get currentCommentList => _currentCommentList;

  BuildContext? _context;
  BuildContext? get context => _context;

  void initializeTextEditingController(TextEditingController controller,
      FocusNode focusNode, int feedId, BuildContext ct) {
    _textEditingController = controller;
    _textFocusNode = focusNode;
    _currentFeedId = feedId;

    _context = ct;
    notifyListeners();
  }

  void disposeController() {
    _textEditingController!.dispose();
    _textFocusNode!.dispose();
    _currentComment = null;
  }

  void typing() {
    textEditingController!.text == '' ? _currentComment = null : null;
    notifyListeners();
  }

  void initializeReply(Comment cmt) {
    _currentComment = cmt;
    _textEditingController!.text = "${_currentComment!.owner.username} :";
    _textFocusNode!.requestFocus();
    notifyListeners();
  }

  VoidCallback get onPressedSendButton => onPressed;
  void onPressed() async {
    if (_textEditingController!.text.isNotEmpty) {
      if (_currentComment != null) {
        await context!.read<FeedProvider>().replyToAComment(
            feedId: _currentFeedId!,
            commentId: _currentComment!.id,
            reply: _textEditingController!.text.split(":")[1]);
        _currentComment = null;
        _textEditingController!.clear();
      } else {
        await context!.read<FeedProvider>().commentToAFeed(
            feedId: _currentFeedId!, comment: _textEditingController!.text);
        _textEditingController!.clear();
      }
    } else {
      log("Empty");
    }
    notifyListeners();
  }

  //
}
