// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupResponse _$$_GroupResponseFromJson(Map<String, dynamic> json) =>
    _$_GroupResponse(
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroupResponseToJson(_$_GroupResponse instance) =>
    <String, dynamic>{
      'groups': instance.groups,
    };

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      groupType: $enumDecodeNullable(_$GroupTypeEnumMap, json['groupType']),
      postLevel: $enumDecodeNullable(_$PostLevelEnumMap, json['postLevel']),
      banner: json['banner'] as String?,
      joinStatus:
          $enumDecodeNullable(_$JoinStatusEnumMap, json['joinStatus']) ??
              JoinStatus.NotDefine,
      communityId: json['communityId'] as String?,
      price: json['price'] as int?,
      myRole: $enumDecodeNullable(_$RoleEnumMap, json['myRole']) ?? Role.User,
      sections: (json['tabs'] as List<dynamic>?)
          ?.map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      isByMe: json['isByMe'] as bool? ?? false,
      isFeatured: json['isFeatured'] as bool? ?? false,
      userCount: json['userCount'] as int? ?? 0,
      quizCount: json['quizCount'] as int? ?? 0,
      liveClassesCount: json['liveClassesCount'] as int? ?? 0,
      notesCount: json['notesCount'] as int? ?? 0,
      createdAt: json['createdAt'] as String?,
      createdBy: json['createdBy'] == null
          ? null
          : UserModel.fromJson(json['createdBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'tags': instance.tags,
      'groupType': _$GroupTypeEnumMap[instance.groupType],
      'postLevel': _$PostLevelEnumMap[instance.postLevel],
      'banner': instance.banner,
      'joinStatus': _$JoinStatusEnumMap[instance.joinStatus],
      'communityId': instance.communityId,
      'price': instance.price,
      'myRole': _$RoleEnumMap[instance.myRole],
      'tabs': instance.sections,
      'isByMe': instance.isByMe,
      'isFeatured': instance.isFeatured,
      'userCount': instance.userCount,
      'quizCount': instance.quizCount,
      'liveClassesCount': instance.liveClassesCount,
      'notesCount': instance.notesCount,
      'createdAt': instance.createdAt,
      'createdBy': instance.createdBy,
    };

const _$GroupTypeEnumMap = {
  GroupType.Open: 'open',
  GroupType.Free: 'closed-free',
  GroupType.Paid: 'closed-paid',
  GroupType.NotDefine: '',
};

const _$PostLevelEnumMap = {
  PostLevel.Admin: 'admin',
  PostLevel.Anyone: 'anyone',
  PostLevel.NotDefine: '',
};

const _$JoinStatusEnumMap = {
  JoinStatus.Joined: 'joined',
  JoinStatus.Invited: 'invited',
  JoinStatus.Requested: 'requested',
  JoinStatus.Declined: 'declined',
  JoinStatus.NotJoined: 'not-joined',
  JoinStatus.NotDefine: '',
};

const _$RoleEnumMap = {
  Role.Admin: 'admin',
  Role.User: 'user',
  Role.Moderator: 'moderator',
  Role.NotDefine: '',
};
