// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) {
  return _GroupResponse.fromJson(json);
}

/// @nodoc
class _$GroupResponseTearOff {
  const _$GroupResponseTearOff();

  _GroupResponse call({List<Group>? groups}) {
    return _GroupResponse(
      groups: groups,
    );
  }

  GroupResponse fromJson(Map<String, Object?> json) {
    return GroupResponse.fromJson(json);
  }
}

/// @nodoc
const $GroupResponse = _$GroupResponseTearOff();

/// @nodoc
mixin _$GroupResponse {
  List<Group>? get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupResponseCopyWith<GroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupResponseCopyWith<$Res> {
  factory $GroupResponseCopyWith(
          GroupResponse value, $Res Function(GroupResponse) then) =
      _$GroupResponseCopyWithImpl<$Res>;
  $Res call({List<Group>? groups});
}

/// @nodoc
class _$GroupResponseCopyWithImpl<$Res>
    implements $GroupResponseCopyWith<$Res> {
  _$GroupResponseCopyWithImpl(this._value, this._then);

  final GroupResponse _value;
  // ignore: unused_field
  final $Res Function(GroupResponse) _then;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
    ));
  }
}

/// @nodoc
abstract class _$GroupResponseCopyWith<$Res>
    implements $GroupResponseCopyWith<$Res> {
  factory _$GroupResponseCopyWith(
          _GroupResponse value, $Res Function(_GroupResponse) then) =
      __$GroupResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<Group>? groups});
}

/// @nodoc
class __$GroupResponseCopyWithImpl<$Res>
    extends _$GroupResponseCopyWithImpl<$Res>
    implements _$GroupResponseCopyWith<$Res> {
  __$GroupResponseCopyWithImpl(
      _GroupResponse _value, $Res Function(_GroupResponse) _then)
      : super(_value, (v) => _then(v as _GroupResponse));

  @override
  _GroupResponse get _value => super._value as _GroupResponse;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_GroupResponse(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupResponse implements _GroupResponse {
  const _$_GroupResponse({this.groups});

  factory _$_GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GroupResponseFromJson(json);

  @override
  final List<Group>? groups;

  @override
  String toString() {
    return 'GroupResponse(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupResponse &&
            const DeepCollectionEquality().equals(other.groups, groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(groups));

  @JsonKey(ignore: true)
  @override
  _$GroupResponseCopyWith<_GroupResponse> get copyWith =>
      __$GroupResponseCopyWithImpl<_GroupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupResponseToJson(this);
  }
}

abstract class _GroupResponse implements GroupResponse {
  const factory _GroupResponse({List<Group>? groups}) = _$_GroupResponse;

  factory _GroupResponse.fromJson(Map<String, dynamic> json) =
      _$_GroupResponse.fromJson;

  @override
  List<Group>? get groups;
  @override
  @JsonKey(ignore: true)
  _$GroupResponseCopyWith<_GroupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {String? id,
      String? name,
      String? description,
      List<String>? tags,
      GroupType? groupType,
      PostLevel? postLevel,
      String? banner,
      JoinStatus? joinStatus = JoinStatus.NotDefine,
      String? communityId,
      int? price,
      Role myRole = Role.User,
      @JsonKey(name: 'tabs') List<Section>? sections,
      bool isByMe = false,
      bool isFeatured = false,
      int userCount = 0,
      int quizCount = 0,
      int liveClassesCount = 0,
      int notesCount = 0,
      String? createdAt,
      UserModel? createdBy}) {
    return _Group(
      id: id,
      name: name,
      description: description,
      tags: tags,
      groupType: groupType,
      postLevel: postLevel,
      banner: banner,
      joinStatus: joinStatus,
      communityId: communityId,
      price: price,
      myRole: myRole,
      sections: sections,
      isByMe: isByMe,
      isFeatured: isFeatured,
      userCount: userCount,
      quizCount: quizCount,
      liveClassesCount: liveClassesCount,
      notesCount: notesCount,
      createdAt: createdAt,
      createdBy: createdBy,
    );
  }

  Group fromJson(Map<String, Object?> json) {
    return Group.fromJson(json);
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  GroupType? get groupType => throw _privateConstructorUsedError;
  PostLevel? get postLevel => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  JoinStatus? get joinStatus => throw _privateConstructorUsedError;
  String? get communityId => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  Role get myRole => throw _privateConstructorUsedError;
  @JsonKey(name: 'tabs')
  List<Section>? get sections => throw _privateConstructorUsedError;
  bool get isByMe => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  int get userCount => throw _privateConstructorUsedError;
  int get quizCount => throw _privateConstructorUsedError;
  int get liveClassesCount => throw _privateConstructorUsedError;
  int get notesCount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  UserModel? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? description,
      List<String>? tags,
      GroupType? groupType,
      PostLevel? postLevel,
      String? banner,
      JoinStatus? joinStatus,
      String? communityId,
      int? price,
      Role myRole,
      @JsonKey(name: 'tabs') List<Section>? sections,
      bool isByMe,
      bool isFeatured,
      int userCount,
      int quizCount,
      int liveClassesCount,
      int notesCount,
      String? createdAt,
      UserModel? createdBy});

  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? groupType = freezed,
    Object? postLevel = freezed,
    Object? banner = freezed,
    Object? joinStatus = freezed,
    Object? communityId = freezed,
    Object? price = freezed,
    Object? myRole = freezed,
    Object? sections = freezed,
    Object? isByMe = freezed,
    Object? isFeatured = freezed,
    Object? userCount = freezed,
    Object? quizCount = freezed,
    Object? liveClassesCount = freezed,
    Object? notesCount = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      groupType: groupType == freezed
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as GroupType?,
      postLevel: postLevel == freezed
          ? _value.postLevel
          : postLevel // ignore: cast_nullable_to_non_nullable
              as PostLevel?,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      joinStatus: joinStatus == freezed
          ? _value.joinStatus
          : joinStatus // ignore: cast_nullable_to_non_nullable
              as JoinStatus?,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      myRole: myRole == freezed
          ? _value.myRole
          : myRole // ignore: cast_nullable_to_non_nullable
              as Role,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      isByMe: isByMe == freezed
          ? _value.isByMe
          : isByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: isFeatured == freezed
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      quizCount: quizCount == freezed
          ? _value.quizCount
          : quizCount // ignore: cast_nullable_to_non_nullable
              as int,
      liveClassesCount: liveClassesCount == freezed
          ? _value.liveClassesCount
          : liveClassesCount // ignore: cast_nullable_to_non_nullable
              as int,
      notesCount: notesCount == freezed
          ? _value.notesCount
          : notesCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? description,
      List<String>? tags,
      GroupType? groupType,
      PostLevel? postLevel,
      String? banner,
      JoinStatus? joinStatus,
      String? communityId,
      int? price,
      Role myRole,
      @JsonKey(name: 'tabs') List<Section>? sections,
      bool isByMe,
      bool isFeatured,
      int userCount,
      int quizCount,
      int liveClassesCount,
      int notesCount,
      String? createdAt,
      UserModel? createdBy});

  @override
  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? tags = freezed,
    Object? groupType = freezed,
    Object? postLevel = freezed,
    Object? banner = freezed,
    Object? joinStatus = freezed,
    Object? communityId = freezed,
    Object? price = freezed,
    Object? myRole = freezed,
    Object? sections = freezed,
    Object? isByMe = freezed,
    Object? isFeatured = freezed,
    Object? userCount = freezed,
    Object? quizCount = freezed,
    Object? liveClassesCount = freezed,
    Object? notesCount = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(_Group(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      groupType: groupType == freezed
          ? _value.groupType
          : groupType // ignore: cast_nullable_to_non_nullable
              as GroupType?,
      postLevel: postLevel == freezed
          ? _value.postLevel
          : postLevel // ignore: cast_nullable_to_non_nullable
              as PostLevel?,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      joinStatus: joinStatus == freezed
          ? _value.joinStatus
          : joinStatus // ignore: cast_nullable_to_non_nullable
              as JoinStatus?,
      communityId: communityId == freezed
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      myRole: myRole == freezed
          ? _value.myRole
          : myRole // ignore: cast_nullable_to_non_nullable
              as Role,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
      isByMe: isByMe == freezed
          ? _value.isByMe
          : isByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: isFeatured == freezed
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      userCount: userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      quizCount: quizCount == freezed
          ? _value.quizCount
          : quizCount // ignore: cast_nullable_to_non_nullable
              as int,
      liveClassesCount: liveClassesCount == freezed
          ? _value.liveClassesCount
          : liveClassesCount // ignore: cast_nullable_to_non_nullable
              as int,
      notesCount: notesCount == freezed
          ? _value.notesCount
          : notesCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group implements _Group {
  const _$_Group(
      {this.id,
      this.name,
      this.description,
      this.tags,
      this.groupType,
      this.postLevel,
      this.banner,
      this.joinStatus = JoinStatus.NotDefine,
      this.communityId,
      this.price,
      this.myRole = Role.User,
      @JsonKey(name: 'tabs') this.sections,
      this.isByMe = false,
      this.isFeatured = false,
      this.userCount = 0,
      this.quizCount = 0,
      this.liveClassesCount = 0,
      this.notesCount = 0,
      this.createdAt,
      this.createdBy});

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$$_GroupFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final List<String>? tags;
  @override
  final GroupType? groupType;
  @override
  final PostLevel? postLevel;
  @override
  final String? banner;
  @JsonKey()
  @override
  final JoinStatus? joinStatus;
  @override
  final String? communityId;
  @override
  final int? price;
  @JsonKey()
  @override
  final Role myRole;
  @override
  @JsonKey(name: 'tabs')
  final List<Section>? sections;
  @JsonKey()
  @override
  final bool isByMe;
  @JsonKey()
  @override
  final bool isFeatured;
  @JsonKey()
  @override
  final int userCount;
  @JsonKey()
  @override
  final int quizCount;
  @JsonKey()
  @override
  final int liveClassesCount;
  @JsonKey()
  @override
  final int notesCount;
  @override
  final String? createdAt;
  @override
  final UserModel? createdBy;

  @override
  String toString() {
    return 'Group(id: $id, name: $name, description: $description, tags: $tags, groupType: $groupType, postLevel: $postLevel, banner: $banner, joinStatus: $joinStatus, communityId: $communityId, price: $price, myRole: $myRole, sections: $sections, isByMe: $isByMe, isFeatured: $isFeatured, userCount: $userCount, quizCount: $quizCount, liveClassesCount: $liveClassesCount, notesCount: $notesCount, createdAt: $createdAt, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Group &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.groupType, groupType) &&
            const DeepCollectionEquality().equals(other.postLevel, postLevel) &&
            const DeepCollectionEquality().equals(other.banner, banner) &&
            const DeepCollectionEquality()
                .equals(other.joinStatus, joinStatus) &&
            const DeepCollectionEquality()
                .equals(other.communityId, communityId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.myRole, myRole) &&
            const DeepCollectionEquality().equals(other.sections, sections) &&
            const DeepCollectionEquality().equals(other.isByMe, isByMe) &&
            const DeepCollectionEquality()
                .equals(other.isFeatured, isFeatured) &&
            const DeepCollectionEquality().equals(other.userCount, userCount) &&
            const DeepCollectionEquality().equals(other.quizCount, quizCount) &&
            const DeepCollectionEquality()
                .equals(other.liveClassesCount, liveClassesCount) &&
            const DeepCollectionEquality()
                .equals(other.notesCount, notesCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(tags),
        const DeepCollectionEquality().hash(groupType),
        const DeepCollectionEquality().hash(postLevel),
        const DeepCollectionEquality().hash(banner),
        const DeepCollectionEquality().hash(joinStatus),
        const DeepCollectionEquality().hash(communityId),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(myRole),
        const DeepCollectionEquality().hash(sections),
        const DeepCollectionEquality().hash(isByMe),
        const DeepCollectionEquality().hash(isFeatured),
        const DeepCollectionEquality().hash(userCount),
        const DeepCollectionEquality().hash(quizCount),
        const DeepCollectionEquality().hash(liveClassesCount),
        const DeepCollectionEquality().hash(notesCount),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(createdBy)
      ]);

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupToJson(this);
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {String? id,
      String? name,
      String? description,
      List<String>? tags,
      GroupType? groupType,
      PostLevel? postLevel,
      String? banner,
      JoinStatus? joinStatus,
      String? communityId,
      int? price,
      Role myRole,
      @JsonKey(name: 'tabs') List<Section>? sections,
      bool isByMe,
      bool isFeatured,
      int userCount,
      int quizCount,
      int liveClassesCount,
      int notesCount,
      String? createdAt,
      UserModel? createdBy}) = _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  List<String>? get tags;
  @override
  GroupType? get groupType;
  @override
  PostLevel? get postLevel;
  @override
  String? get banner;
  @override
  JoinStatus? get joinStatus;
  @override
  String? get communityId;
  @override
  int? get price;
  @override
  Role get myRole;
  @override
  @JsonKey(name: 'tabs')
  List<Section>? get sections;
  @override
  bool get isByMe;
  @override
  bool get isFeatured;
  @override
  int get userCount;
  @override
  int get quizCount;
  @override
  int get liveClassesCount;
  @override
  int get notesCount;
  @override
  String? get createdAt;
  @override
  UserModel? get createdBy;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith => throw _privateConstructorUsedError;
}
