// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  set body(String value) => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  set created_at(String value) => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  set updated_at(String value) => throw _privateConstructorUsedError;
  int get post_id => throw _privateConstructorUsedError;
  set post_id(int value) => throw _privateConstructorUsedError;
  int get reply_count => throw _privateConstructorUsedError;
  set reply_count(int value) => throw _privateConstructorUsedError;
  CommentOwner get owner => throw _privateConstructorUsedError;
  set owner(CommentOwner value) => throw _privateConstructorUsedError;
  ReplyList? get reply_list => throw _privateConstructorUsedError;
  set reply_list(ReplyList? value) => throw _privateConstructorUsedError;

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      int post_id,
      int reply_count,
      CommentOwner owner,
      ReplyList? reply_list});

  $CommentOwnerCopyWith<$Res> get owner;
  $ReplyListCopyWith<$Res>? get reply_list;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? post_id = null,
    Object? reply_count = null,
    Object? owner = null,
    Object? reply_list = freezed,
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
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      reply_count: null == reply_count
          ? _value.reply_count
          : reply_count // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as CommentOwner,
      reply_list: freezed == reply_list
          ? _value.reply_list
          : reply_list // ignore: cast_nullable_to_non_nullable
              as ReplyList?,
    ) as $Val);
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentOwnerCopyWith<$Res> get owner {
    return $CommentOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReplyListCopyWith<$Res>? get reply_list {
    if (_value.reply_list == null) {
      return null;
    }

    return $ReplyListCopyWith<$Res>(_value.reply_list!, (value) {
      return _then(_value.copyWith(reply_list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      int post_id,
      int reply_count,
      CommentOwner owner,
      ReplyList? reply_list});

  @override
  $CommentOwnerCopyWith<$Res> get owner;
  @override
  $ReplyListCopyWith<$Res>? get reply_list;
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? post_id = null,
    Object? reply_count = null,
    Object? owner = null,
    Object? reply_list = freezed,
  }) {
    return _then(_$CommentImpl(
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
      post_id: null == post_id
          ? _value.post_id
          : post_id // ignore: cast_nullable_to_non_nullable
              as int,
      reply_count: null == reply_count
          ? _value.reply_count
          : reply_count // ignore: cast_nullable_to_non_nullable
              as int,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as CommentOwner,
      reply_list: freezed == reply_list
          ? _value.reply_list
          : reply_list // ignore: cast_nullable_to_non_nullable
              as ReplyList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl extends _Comment {
  _$CommentImpl(
      {required this.id,
      required this.body,
      required this.created_at,
      required this.updated_at,
      required this.post_id,
      required this.reply_count,
      required this.owner,
      this.reply_list})
      : super._();

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  int id;
  @override
  String body;
  @override
  String created_at;
  @override
  String updated_at;
  @override
  int post_id;
  @override
  int reply_count;
  @override
  CommentOwner owner;
  @override
  ReplyList? reply_list;

  @override
  String toString() {
    return 'Comment(id: $id, body: $body, created_at: $created_at, updated_at: $updated_at, post_id: $post_id, reply_count: $reply_count, owner: $owner, reply_list: $reply_list)';
  }

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment extends Comment {
  factory _Comment(
      {required int id,
      required String body,
      required String created_at,
      required String updated_at,
      required int post_id,
      required int reply_count,
      required CommentOwner owner,
      ReplyList? reply_list}) = _$CommentImpl;
  _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

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
  int get post_id;
  set post_id(int value);
  @override
  int get reply_count;
  set reply_count(int value);
  @override
  CommentOwner get owner;
  set owner(CommentOwner value);
  @override
  ReplyList? get reply_list;
  set reply_list(ReplyList? value);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
