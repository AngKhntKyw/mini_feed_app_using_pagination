// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  set body(String value) => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  set created_at(String value) => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  set updated_at(String value) => throw _privateConstructorUsedError;
  String? get media_url => throw _privateConstructorUsedError;
  set media_url(String? value) => throw _privateConstructorUsedError;
  String get media_type => throw _privateConstructorUsedError;
  set media_type(String value) => throw _privateConstructorUsedError;
  int get like_count => throw _privateConstructorUsedError;
  set like_count(int value) => throw _privateConstructorUsedError;
  int get comment_count => throw _privateConstructorUsedError;
  set comment_count(int value) => throw _privateConstructorUsedError;
  bool get is_liked => throw _privateConstructorUsedError;
  set is_liked(bool value) => throw _privateConstructorUsedError;
  FeedOwner get owner => throw _privateConstructorUsedError;
  set owner(FeedOwner value) => throw _privateConstructorUsedError;
  CommentList? get comment_list => throw _privateConstructorUsedError;
  set comment_list(CommentList? value) => throw _privateConstructorUsedError;

  /// Serializes this Feed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      String? media_url,
      String media_type,
      int like_count,
      int comment_count,
      bool is_liked,
      FeedOwner owner,
      CommentList? comment_list});

  $FeedOwnerCopyWith<$Res> get owner;
  $CommentListCopyWith<$Res>? get comment_list;
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? media_url = freezed,
    Object? media_type = null,
    Object? like_count = null,
    Object? comment_count = null,
    Object? is_liked = null,
    Object? owner = null,
    Object? comment_list = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      media_url: freezed == media_url
          ? _value.media_url
          : media_url // ignore: cast_nullable_to_non_nullable
              as String?,
      media_type: null == media_type
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
      comment_count: null == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int,
      is_liked: null == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as FeedOwner,
      comment_list: freezed == comment_list
          ? _value.comment_list
          : comment_list // ignore: cast_nullable_to_non_nullable
              as CommentList?,
    ) as $Val);
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedOwnerCopyWith<$Res> get owner {
    return $FeedOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentListCopyWith<$Res>? get comment_list {
    if (_value.comment_list == null) {
      return null;
    }

    return $CommentListCopyWith<$Res>(_value.comment_list!, (value) {
      return _then(_value.copyWith(comment_list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
          _$FeedImpl value, $Res Function(_$FeedImpl) then) =
      __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      String? media_url,
      String media_type,
      int like_count,
      int comment_count,
      bool is_liked,
      FeedOwner owner,
      CommentList? comment_list});

  @override
  $FeedOwnerCopyWith<$Res> get owner;
  @override
  $CommentListCopyWith<$Res>? get comment_list;
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? media_url = freezed,
    Object? media_type = null,
    Object? like_count = null,
    Object? comment_count = null,
    Object? is_liked = null,
    Object? owner = null,
    Object? comment_list = freezed,
  }) {
    return _then(_$FeedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      media_url: freezed == media_url
          ? _value.media_url
          : media_url // ignore: cast_nullable_to_non_nullable
              as String?,
      media_type: null == media_type
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
      comment_count: null == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int,
      is_liked: null == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as FeedOwner,
      comment_list: freezed == comment_list
          ? _value.comment_list
          : comment_list // ignore: cast_nullable_to_non_nullable
              as CommentList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedImpl extends _Feed {
  _$FeedImpl(
      {required this.id,
      required this.body,
      required this.created_at,
      required this.updated_at,
      this.media_url,
      required this.media_type,
      required this.like_count,
      required this.comment_count,
      required this.is_liked,
      required this.owner,
      this.comment_list})
      : super._();

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

  @override
  int id;
  @override
  String body;
  @override
  String created_at;
  @override
  String updated_at;
  @override
  String? media_url;
  @override
  String media_type;
  @override
  int like_count;
  @override
  int comment_count;
  @override
  bool is_liked;
  @override
  FeedOwner owner;
  @override
  CommentList? comment_list;

  @override
  String toString() {
    return 'Feed(id: $id, body: $body, created_at: $created_at, updated_at: $updated_at, media_url: $media_url, media_type: $media_type, like_count: $like_count, comment_count: $comment_count, is_liked: $is_liked, owner: $owner, comment_list: $comment_list)';
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(
      this,
    );
  }
}

abstract class _Feed extends Feed {
  factory _Feed(
      {required int id,
      required String body,
      required String created_at,
      required String updated_at,
      String? media_url,
      required String media_type,
      required int like_count,
      required int comment_count,
      required bool is_liked,
      required FeedOwner owner,
      CommentList? comment_list}) = _$FeedImpl;
  _Feed._() : super._();

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get body;
  set body(String value);
  @override
  String get created_at;
  set created_at(String value);
  @override
  String get updated_at;
  set updated_at(String value);
  @override
  String? get media_url;
  set media_url(String? value);
  @override
  String get media_type;
  set media_type(String value);
  @override
  int get like_count;
  set like_count(int value);
  @override
  int get comment_count;
  set comment_count(int value);
  @override
  bool get is_liked;
  set is_liked(bool value);
  @override
  FeedOwner get owner;
  set owner(FeedOwner value);
  @override
  CommentList? get comment_list;
  set comment_list(CommentList? value);

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
