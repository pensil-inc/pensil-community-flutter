// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Ccommunity _$$CcommunityFromJson(Map<String, dynamic> json) => _$Ccommunity(
      id: json['id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      logo: json['logo'] as String?,
      createdAt: json['createdAt'] as String?,
      defaultGroup: json['defaultGroup'] as String?,
      myRole: json['myRole'] as String? ?? 'user',
      joined: json['joined'] ?? false,
      isFeatured: json['isFeatured'] ?? false,
      isByMe: json['isByMe'] ?? false,
      subscribersCount: json['subscribersCount'] ?? 0,
      createdBy: json['createdBy'] == null
          ? null
          : UserModel.fromJson(json['createdBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CcommunityToJson(_$Ccommunity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'logo': instance.logo,
      'createdAt': instance.createdAt,
      'defaultGroup': instance.defaultGroup,
      'myRole': instance.myRole,
      'joined': instance.joined,
      'isFeatured': instance.isFeatured,
      'isByMe': instance.isByMe,
      'subscribersCount': instance.subscribersCount,
      'createdBy': instance.createdBy,
    };
