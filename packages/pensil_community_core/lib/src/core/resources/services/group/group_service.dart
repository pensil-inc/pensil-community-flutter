import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/model/section/section.dart';

part 'group_service_impl.dart';

abstract class GroupService {
  ResultOrError<Group> getGroupDetail(String groupId);
  ResultOrError<Group> createGroup(Group request, {File? file, bool? isEdit});

  ResultOrError<Group> joinGroup(String id, bool isJoin);

  /// User can accept/reject invite from a group
  ResultOrError<Group> acceptInvite(String groupId, bool isAccept);

  /// Admin can accept/reject users request to his group
  ResultOrError<Group> groupJoinRequest(
      {required String groupId,
      required String userId,
      required bool isAccepted});

  ResultOrError<Map<String, dynamic>> deleteById(String endpoint);

  // ResultOrError< List<GroupMember>> getGroupMembers(String groupId);
  // Future<Either<String, bool>> inviteMembers(GroupInviteRequest request);
  ResultOrError<Group> cancelJoinRequest(String groupId);
  ResultOrError<Group> cancelgroupInvite(String groupId, String userId);

  /// Create tabs for group
  ResultOrError<Group> addSectionInGroup(String groupId, Section tab,
      {bool isEdit = false});

  ResultOrError<Group> updateMemberRole(
      String groupId, String memberId, String role);
}
