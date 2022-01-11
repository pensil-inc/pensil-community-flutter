// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
class _$SectionTearOff {
  const _$SectionTearOff();

  _Section call(
      {String? id,
      String? name,
      String? emoji,
      SectionType sectionType = SectionType.Generic,
      PostLevel? postLevel = PostLevel.Anyone,
      bool isClosed = false,
      bool isJoined = false,
      JoinStatus? status = JoinStatus.NotDefine}) {
    return _Section(
      id: id,
      name: name,
      emoji: emoji,
      sectionType: sectionType,
      postLevel: postLevel,
      isClosed: isClosed,
      isJoined: isJoined,
      status: status,
    );
  }

  Section fromJson(Map<String, Object?> json) {
    return Section.fromJson(json);
  }
}

/// @nodoc
const $Section = _$SectionTearOff();

/// @nodoc
mixin _$Section {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get emoji => throw _privateConstructorUsedError;
  SectionType get sectionType => throw _privateConstructorUsedError;
  PostLevel? get postLevel => throw _privateConstructorUsedError;
  bool get isClosed => throw _privateConstructorUsedError;
  bool get isJoined => throw _privateConstructorUsedError;
  JoinStatus? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? emoji,
      SectionType sectionType,
      PostLevel? postLevel,
      bool isClosed,
      bool isJoined,
      JoinStatus? status});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res> implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  final Section _value;
  // ignore: unused_field
  final $Res Function(Section) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emoji = freezed,
    Object? sectionType = freezed,
    Object? postLevel = freezed,
    Object? isClosed = freezed,
    Object? isJoined = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: sectionType == freezed
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as SectionType,
      postLevel: postLevel == freezed
          ? _value.postLevel
          : postLevel // ignore: cast_nullable_to_non_nullable
              as PostLevel?,
      isClosed: isClosed == freezed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoined: isJoined == freezed
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JoinStatus?,
    ));
  }
}

/// @nodoc
abstract class _$SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) then) =
      __$SectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? emoji,
      SectionType sectionType,
      PostLevel? postLevel,
      bool isClosed,
      bool isJoined,
      JoinStatus? status});
}

/// @nodoc
class __$SectionCopyWithImpl<$Res> extends _$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(_Section _value, $Res Function(_Section) _then)
      : super(_value, (v) => _then(v as _Section));

  @override
  _Section get _value => super._value as _Section;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emoji = freezed,
    Object? sectionType = freezed,
    Object? postLevel = freezed,
    Object? isClosed = freezed,
    Object? isJoined = freezed,
    Object? status = freezed,
  }) {
    return _then(_Section(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionType: sectionType == freezed
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as SectionType,
      postLevel: postLevel == freezed
          ? _value.postLevel
          : postLevel // ignore: cast_nullable_to_non_nullable
              as PostLevel?,
      isClosed: isClosed == freezed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isJoined: isJoined == freezed
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as JoinStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Section implements _Section {
  const _$_Section(
      {this.id,
      this.name,
      this.emoji,
      this.sectionType = SectionType.Generic,
      this.postLevel = PostLevel.Anyone,
      this.isClosed = false,
      this.isJoined = false,
      this.status = JoinStatus.NotDefine});

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$$_SectionFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? emoji;
  @JsonKey()
  @override
  final SectionType sectionType;
  @JsonKey()
  @override
  final PostLevel? postLevel;
  @JsonKey()
  @override
  final bool isClosed;
  @JsonKey()
  @override
  final bool isJoined;
  @JsonKey()
  @override
  final JoinStatus? status;

  @override
  String toString() {
    return 'Section(id: $id, name: $name, emoji: $emoji, sectionType: $sectionType, postLevel: $postLevel, isClosed: $isClosed, isJoined: $isJoined, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Section &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.emoji, emoji) &&
            const DeepCollectionEquality()
                .equals(other.sectionType, sectionType) &&
            const DeepCollectionEquality().equals(other.postLevel, postLevel) &&
            const DeepCollectionEquality().equals(other.isClosed, isClosed) &&
            const DeepCollectionEquality().equals(other.isJoined, isJoined) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(emoji),
      const DeepCollectionEquality().hash(sectionType),
      const DeepCollectionEquality().hash(postLevel),
      const DeepCollectionEquality().hash(isClosed),
      const DeepCollectionEquality().hash(isJoined),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$SectionCopyWith<_Section> get copyWith =>
      __$SectionCopyWithImpl<_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionToJson(this);
  }
}

abstract class _Section implements Section {
  const factory _Section(
      {String? id,
      String? name,
      String? emoji,
      SectionType sectionType,
      PostLevel? postLevel,
      bool isClosed,
      bool isJoined,
      JoinStatus? status}) = _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get emoji;
  @override
  SectionType get sectionType;
  @override
  PostLevel? get postLevel;
  @override
  bool get isClosed;
  @override
  bool get isJoined;
  @override
  JoinStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$SectionCopyWith<_Section> get copyWith =>
      throw _privateConstructorUsedError;
}
