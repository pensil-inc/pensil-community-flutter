// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'community.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return Ccommunity.fromJson(json);
}

/// @nodoc
class _$CommunityTearOff {
  const _$CommunityTearOff();

  Ccommunity call(
      {String? id,
      String? name,
      String? address,
      String? logo,
      String? createdAt,
      String? defaultGroup,
      String myRole = 'user',
      dynamic joined = false,
      dynamic isFeatured = false,
      dynamic isByMe = false,
      dynamic subscribersCount = 0,
      UserModel? createdBy}) {
    return Ccommunity(
      id: id,
      name: name,
      address: address,
      logo: logo,
      createdAt: createdAt,
      defaultGroup: defaultGroup,
      myRole: myRole,
      joined: joined,
      isFeatured: isFeatured,
      isByMe: isByMe,
      subscribersCount: subscribersCount,
      createdBy: createdBy,
    );
  }

  Community fromJson(Map<String, Object?> json) {
    return Community.fromJson(json);
  }
}

/// @nodoc
const $Community = _$CommunityTearOff();

/// @nodoc
mixin _$Community {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get defaultGroup => throw _privateConstructorUsedError;
  String get myRole => throw _privateConstructorUsedError;
  dynamic get joined => throw _privateConstructorUsedError;
  dynamic get isFeatured => throw _privateConstructorUsedError;
  dynamic get isByMe => throw _privateConstructorUsedError;
  dynamic get subscribersCount => throw _privateConstructorUsedError;
  UserModel? get createdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      String? address,
      String? logo,
      String? createdAt,
      String? defaultGroup,
      String myRole,
      dynamic joined,
      dynamic isFeatured,
      dynamic isByMe,
      dynamic subscribersCount,
      UserModel? createdBy});

  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res> implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  final Community _value;
  // ignore: unused_field
  final $Res Function(Community) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? defaultGroup = freezed,
    Object? myRole = freezed,
    Object? joined = freezed,
    Object? isFeatured = freezed,
    Object? isByMe = freezed,
    Object? subscribersCount = freezed,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultGroup: defaultGroup == freezed
          ? _value.defaultGroup
          : defaultGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      myRole: myRole == freezed
          ? _value.myRole
          : myRole // ignore: cast_nullable_to_non_nullable
              as String,
      joined: joined == freezed
          ? _value.joined
          : joined // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isFeatured: isFeatured == freezed
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isByMe: isByMe == freezed
          ? _value.isByMe
          : isByMe // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class $CcommunityCopyWith<$Res> implements $CommunityCopyWith<$Res> {
  factory $CcommunityCopyWith(
          Ccommunity value, $Res Function(Ccommunity) then) =
      _$CcommunityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      String? address,
      String? logo,
      String? createdAt,
      String? defaultGroup,
      String myRole,
      dynamic joined,
      dynamic isFeatured,
      dynamic isByMe,
      dynamic subscribersCount,
      UserModel? createdBy});

  @override
  $UserModelCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$CcommunityCopyWithImpl<$Res> extends _$CommunityCopyWithImpl<$Res>
    implements $CcommunityCopyWith<$Res> {
  _$CcommunityCopyWithImpl(Ccommunity _value, $Res Function(Ccommunity) _then)
      : super(_value, (v) => _then(v as Ccommunity));

  @override
  Ccommunity get _value => super._value as Ccommunity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? logo = freezed,
    Object? createdAt = freezed,
    Object? defaultGroup = freezed,
    Object? myRole = freezed,
    Object? joined = freezed,
    Object? isFeatured = freezed,
    Object? isByMe = freezed,
    Object? subscribersCount = freezed,
    Object? createdBy = freezed,
  }) {
    return _then(Ccommunity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultGroup: defaultGroup == freezed
          ? _value.defaultGroup
          : defaultGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      myRole: myRole == freezed
          ? _value.myRole
          : myRole // ignore: cast_nullable_to_non_nullable
              as String,
      joined: joined == freezed ? _value.joined : joined,
      isFeatured: isFeatured == freezed ? _value.isFeatured : isFeatured,
      isByMe: isByMe == freezed ? _value.isByMe : isByMe,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Ccommunity implements Ccommunity {
  const _$Ccommunity(
      {this.id,
      this.name,
      this.address,
      this.logo,
      this.createdAt,
      this.defaultGroup,
      this.myRole = 'user',
      this.joined = false,
      this.isFeatured = false,
      this.isByMe = false,
      this.subscribersCount = 0,
      this.createdBy});

  factory _$Ccommunity.fromJson(Map<String, dynamic> json) =>
      _$$CcommunityFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? logo;
  @override
  final String? createdAt;
  @override
  final String? defaultGroup;
  @JsonKey()
  @override
  final String myRole;
  @JsonKey()
  @override
  final dynamic joined;
  @JsonKey()
  @override
  final dynamic isFeatured;
  @JsonKey()
  @override
  final dynamic isByMe;
  @JsonKey()
  @override
  final dynamic subscribersCount;
  @override
  final UserModel? createdBy;

  @override
  String toString() {
    return 'Community(id: $id, name: $name, address: $address, logo: $logo, createdAt: $createdAt, defaultGroup: $defaultGroup, myRole: $myRole, joined: $joined, isFeatured: $isFeatured, isByMe: $isByMe, subscribersCount: $subscribersCount, createdBy: $createdBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ccommunity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.defaultGroup, defaultGroup) &&
            const DeepCollectionEquality().equals(other.myRole, myRole) &&
            const DeepCollectionEquality().equals(other.joined, joined) &&
            const DeepCollectionEquality()
                .equals(other.isFeatured, isFeatured) &&
            const DeepCollectionEquality().equals(other.isByMe, isByMe) &&
            const DeepCollectionEquality()
                .equals(other.subscribersCount, subscribersCount) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(defaultGroup),
      const DeepCollectionEquality().hash(myRole),
      const DeepCollectionEquality().hash(joined),
      const DeepCollectionEquality().hash(isFeatured),
      const DeepCollectionEquality().hash(isByMe),
      const DeepCollectionEquality().hash(subscribersCount),
      const DeepCollectionEquality().hash(createdBy));

  @JsonKey(ignore: true)
  @override
  $CcommunityCopyWith<Ccommunity> get copyWith =>
      _$CcommunityCopyWithImpl<Ccommunity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CcommunityToJson(this);
  }
}

abstract class Ccommunity implements Community {
  const factory Ccommunity(
      {String? id,
      String? name,
      String? address,
      String? logo,
      String? createdAt,
      String? defaultGroup,
      String myRole,
      dynamic joined,
      dynamic isFeatured,
      dynamic isByMe,
      dynamic subscribersCount,
      UserModel? createdBy}) = _$Ccommunity;

  factory Ccommunity.fromJson(Map<String, dynamic> json) =
      _$Ccommunity.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get logo;
  @override
  String? get createdAt;
  @override
  String? get defaultGroup;
  @override
  String get myRole;
  @override
  dynamic get joined;
  @override
  dynamic get isFeatured;
  @override
  dynamic get isByMe;
  @override
  dynamic get subscribersCount;
  @override
  UserModel? get createdBy;
  @override
  @JsonKey(ignore: true)
  $CcommunityCopyWith<Ccommunity> get copyWith =>
      throw _privateConstructorUsedError;
}
