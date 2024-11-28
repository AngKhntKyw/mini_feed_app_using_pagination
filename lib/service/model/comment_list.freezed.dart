// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentList _$CommentListFromJson(Map<String, dynamic> json) {
  return _CommentList.fromJson(json);
}

/// @nodoc
mixin _$CommentList {
  List<Comment> get data => throw _privateConstructorUsedError;
  set data(List<Comment> value) => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  set cursor(String? value) => throw _privateConstructorUsedError;
  bool get has_next_page => throw _privateConstructorUsedError;
  set has_next_page(bool value) => throw _privateConstructorUsedError;

  /// Serializes this CommentList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentListCopyWith<CommentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListCopyWith<$Res> {
  factory $CommentListCopyWith(
          CommentList value, $Res Function(CommentList) then) =
      _$CommentListCopyWithImpl<$Res, CommentList>;
  @useResult
  $Res call({List<Comment> data, String? cursor, bool has_next_page});
}

/// @nodoc
class _$CommentListCopyWithImpl<$Res, $Val extends CommentList>
    implements $CommentListCopyWith<$Res> {
  _$CommentListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cursor = freezed,
    Object? has_next_page = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      has_next_page: null == has_next_page
          ? _value.has_next_page
          : has_next_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentListImplCopyWith<$Res>
    implements $CommentListCopyWith<$Res> {
  factory _$$CommentListImplCopyWith(
          _$CommentListImpl value, $Res Function(_$CommentListImpl) then) =
      __$$CommentListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment> data, String? cursor, bool has_next_page});
}

/// @nodoc
class __$$CommentListImplCopyWithImpl<$Res>
    extends _$CommentListCopyWithImpl<$Res, _$CommentListImpl>
    implements _$$CommentListImplCopyWith<$Res> {
  __$$CommentListImplCopyWithImpl(
      _$CommentListImpl _value, $Res Function(_$CommentListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cursor = freezed,
    Object? has_next_page = null,
  }) {
    return _then(_$CommentListImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      has_next_page: null == has_next_page
          ? _value.has_next_page
          : has_next_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentListImpl extends _CommentList {
  _$CommentListImpl(
      {required this.data, this.cursor, required this.has_next_page})
      : super._();

  factory _$CommentListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentListImplFromJson(json);

  @override
  List<Comment> data;
  @override
  String? cursor;
  @override
  bool has_next_page;

  @override
  String toString() {
    return 'CommentList(data: $data, cursor: $cursor, has_next_page: $has_next_page)';
  }

  /// Create a copy of CommentList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentListImplCopyWith<_$CommentListImpl> get copyWith =>
      __$$CommentListImplCopyWithImpl<_$CommentListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentListImplToJson(
      this,
    );
  }
}

abstract class _CommentList extends CommentList {
  factory _CommentList(
      {required List<Comment> data,
      String? cursor,
      required bool has_next_page}) = _$CommentListImpl;
  _CommentList._() : super._();

  factory _CommentList.fromJson(Map<String, dynamic> json) =
      _$CommentListImpl.fromJson;

  @override
  List<Comment> get data;
  set data(List<Comment> value);
  @override
  String? get cursor;
  set cursor(String? value);
  @override
  bool get has_next_page;
  set has_next_page(bool value);

  /// Create a copy of CommentList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentListImplCopyWith<_$CommentListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}