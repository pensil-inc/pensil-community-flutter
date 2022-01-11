// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Section _$$_SectionFromJson(Map<String, dynamic> json) => _$_Section(
      id: json['id'] as String?,
      name: json['name'] as String?,
      emoji: json['emoji'] as String?,
      sectionType:
          $enumDecodeNullable(_$SectionTypeEnumMap, json['sectionType']) ??
              SectionType.Generic,
      postLevel: $enumDecodeNullable(_$PostLevelEnumMap, json['postLevel']) ??
          PostLevel.Anyone,
      isClosed: json['isClosed'] as bool? ?? false,
      isJoined: json['isJoined'] as bool? ?? false,
      status: $enumDecodeNullable(_$JoinStatusEnumMap, json['status']) ??
          JoinStatus.NotDefine,
    );

Map<String, dynamic> _$$_SectionToJson(_$_Section instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'emoji': instance.emoji,
      'sectionType': _$SectionTypeEnumMap[instance.sectionType],
      'postLevel': _$PostLevelEnumMap[instance.postLevel],
      'isClosed': instance.isClosed,
      'isJoined': instance.isJoined,
      'status': _$JoinStatusEnumMap[instance.status],
    };

const _$SectionTypeEnumMap = {
  SectionType.Generic: 'generic',
  SectionType.Realtime: 'realtime',
  SectionType.NotDefine: '',
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
