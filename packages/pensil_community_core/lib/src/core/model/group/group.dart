import 'package:freezed_annotation/freezed_annotation.dart';
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
    String? groupType,
    String? postLevel,
    String? banner,
    String? joinStatus,
    String? communityId,
    int? price,
    @Default('user') String myRole,
    List<Tab>? tabs,
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

// extension GroupModelHelper on Group {
//   bool get joined => this.groupJoinStatus == GroupMemberStatus.Joined;

//   /// If group Type is not define then it will be considerd as [Closed-Free ]
//   GroupType get eGroupType =>
//       GroupType.Free.key(this.groupType != null && this.groupType!.isNotEmpty
//           ? this.groupType
//           : 'closed-free');
//   GroupMemberRole get eGroupUserRole {
//     // ignore: unnecessary_null_comparison
//     if (this.myRole == null) {
//       return GroupMemberRole.User;
//     }
//     return GroupMemberRole.User.key(this.myRole);
//   }

//   GroupMemberStatus get groupJoinStatus =>
//       GroupMemberStatus.Joined.key(this.joinStatus);
//   PostLevel get postLevel => PostLevel.Admin.key(this.postLevel);

//   /// Cehck for [Admin] permision
// bool get hasPrimaryPermision => this.eGroupUserRole == GroupMemberRole.Admin;

//   /// Cehck for [Admin] and [Moderator]permision
//   bool get hasSecondaryPermision =>
//       this.eGroupUserRole == GroupMemberRole.Admin ||
//       this.eGroupUserRole == GroupMemberRole.Moderator;

//   /// Cehck for [Moderator] permision
//   bool get hasOnlySecondaryPermision =>
//       this.eGroupUserRole == GroupMemberRole.Moderator;

//   /// Post permission is only allowed if
//   /// Group is created by me
//   /// [Post Level]  of a tab section is allowed is [PostLevel.Anyone]
//   bool hasPostPermissions(TabModel? tab) {
//     if (isByMe) {
//       return true;
//     } else if (this.eGroupUserRole == GroupMemberRole.Moderator ||
//         this.eGroupUserRole == GroupMemberRole.Admin) {
//       return true;
//     } else if (joined && tab != null && tab.hasPostPermissions) {
//       return true;
//     }
//     return false;
//   }
// }

@freezed
class Tab with _$Tab {
  const factory Tab({
    String? id,
    String? name,
    String? emoji,
    String? sectionType,
    String? postLevel,
    @Default(false) bool isClosed,
    @Default(false) bool isJoined,
    String? status,
  }) = _Tab;

  factory Tab.fromJson(Map<String, dynamic> json) => _$TabFromJson(json);
}

// extension TabModelHelper on TabModel {
//   PostLevel get postLevel => PostLevel.Admin.key(this.postLevel);
//   SectionType get eSectionType => SectionType.Generic.key(this.sectionType);
//   bool get hasPostPermissions {
//     if (postLevel == PostLevel.Anyone) {
//       return true;
//     }
//     return false;
//   }

//   GroupMemberStatus get sectionJoinStatus =>
//       GroupMemberStatus.Joined.key(this.status);
// }
