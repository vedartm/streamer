// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoTearOff {
  const _$VideoTearOff();

  _Video call(
      {required String id,
      required String title,
      required String description,
      required String thumbnailUrl,
      required String mediaUrl,
      required int viewsCount,
      required User creator,
      required DateTime createdAt}) {
    return _Video(
      id: id,
      title: title,
      description: description,
      thumbnailUrl: thumbnailUrl,
      mediaUrl: mediaUrl,
      viewsCount: viewsCount,
      creator: creator,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $Video = _$VideoTearOff();

/// @nodoc
mixin _$Video {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;
  int get viewsCount => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      String thumbnailUrl,
      String mediaUrl,
      int viewsCount,
      User creator,
      DateTime createdAt});

  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$VideoCopyWithImpl<$Res> implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  final Video _value;
  // ignore: unused_field
  final $Res Function(Video) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
    Object? mediaUrl = freezed,
    Object? viewsCount = freezed,
    Object? creator = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: mediaUrl == freezed
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $UserCopyWith<$Res> get creator {
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

/// @nodoc
abstract class _$VideoCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$VideoCopyWith(_Video value, $Res Function(_Video) then) =
      __$VideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      String thumbnailUrl,
      String mediaUrl,
      int viewsCount,
      User creator,
      DateTime createdAt});

  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$VideoCopyWithImpl<$Res> extends _$VideoCopyWithImpl<$Res>
    implements _$VideoCopyWith<$Res> {
  __$VideoCopyWithImpl(_Video _value, $Res Function(_Video) _then)
      : super(_value, (v) => _then(v as _Video));

  @override
  _Video get _value => super._value as _Video;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
    Object? mediaUrl = freezed,
    Object? viewsCount = freezed,
    Object? creator = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Video(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: mediaUrl == freezed
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      viewsCount: viewsCount == freezed
          ? _value.viewsCount
          : viewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      creator: creator == freezed
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Video implements _Video {
  const _$_Video(
      {required this.id,
      required this.title,
      required this.description,
      required this.thumbnailUrl,
      required this.mediaUrl,
      required this.viewsCount,
      required this.creator,
      required this.createdAt});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String thumbnailUrl;
  @override
  final String mediaUrl;
  @override
  final int viewsCount;
  @override
  final User creator;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Video(id: $id, title: $title, description: $description, thumbnailUrl: $thumbnailUrl, mediaUrl: $mediaUrl, viewsCount: $viewsCount, creator: $creator, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Video &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl) &&
            const DeepCollectionEquality().equals(other.mediaUrl, mediaUrl) &&
            const DeepCollectionEquality()
                .equals(other.viewsCount, viewsCount) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnailUrl),
      const DeepCollectionEquality().hash(mediaUrl),
      const DeepCollectionEquality().hash(viewsCount),
      const DeepCollectionEquality().hash(creator),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$VideoCopyWith<_Video> get copyWith =>
      __$VideoCopyWithImpl<_Video>(this, _$identity);
}

abstract class _Video implements Video {
  const factory _Video(
      {required String id,
      required String title,
      required String description,
      required String thumbnailUrl,
      required String mediaUrl,
      required int viewsCount,
      required User creator,
      required DateTime createdAt}) = _$_Video;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get thumbnailUrl;
  @override
  String get mediaUrl;
  @override
  int get viewsCount;
  @override
  User get creator;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$VideoCopyWith<_Video> get copyWith => throw _privateConstructorUsedError;
}
