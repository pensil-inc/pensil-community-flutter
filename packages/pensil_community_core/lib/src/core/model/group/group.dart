// ignore_for_file: constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/enum.dart/group_type.dart';
import 'package:pensil_community_core/src/core/enum.dart/join_status.dart';
import 'package:pensil_community_core/src/core/enum.dart/post_level.dart';
import 'package:pensil_community_core/src/core/enum.dart/role.dart';
import 'package:pensil_community_core/src/core/model/section/section.dart';
import 'package:pensil_community_core/src/core/model/user/user.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class GroupResponse with _$GroupResponse {
  const factory GroupResponse({List<Group>? groups}) = _GroupResponse;

  factory GroupResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupResponseFromJson(json);
}

@freezed
class Group with _$Group {
  const factory Group({
    String? id,
    String? name,
    String? description,
    List<String>? tags,
    GroupType? groupType,
    PostLevel? postLevel,
    String? banner,
    @Default(JoinStatus.NotDefine) JoinStatus? joinStatus,
    String? communityId,
    int? price,
    @Default(Role.User) Role myRole,
    @JsonKey(name: 'tabs') List<Section>? sections,
    @Default(false) bool isByMe,
    @Default(false) bool isFeatured,
    @Default(0) int userCount,
    @Default(0) int quizCount,
    @Default(0) int liveClassesCount,
    @Default(0) int notesCount,
    String? createdAt,
    UserModel? createdBy,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

extension GroupModelHelper on Group {
  bool get joined => joinStatus == JoinStatus.Joined;

  /// Cehck for [Admin] permision
  bool get hasPrimaryPermision => myRole == Role.Admin;

  /// Cehck for [Admin] and [Moderator]permision
  bool get hasSecondaryPermision =>
      myRole == Role.Admin || myRole == Role.Moderator;

  /// Cehck for [Moderator] permision
  bool get hasOnlySecondaryPermision => myRole == Role.Moderator;

  /// Post permission is only allowed if
  /// Group is created by me
  /// [Post Level]  of a tab section is allowed is [PostLevel.Anyone]
  bool hasPostPermissions(Section? tab) {
    if (isByMe) {
      return true;
    } else if (myRole == Role.Moderator || myRole == Role.Admin) {
      return true;
    } else if (joined && tab != null && tab.hasPostPermissions) {
      return true;
    }
    return false;
  }
}
