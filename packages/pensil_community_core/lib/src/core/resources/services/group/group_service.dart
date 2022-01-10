import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/model/section/section.dart';

part 'group_service_impl.dart';

abstract class GroupService {
  ResultOrException<Group> getGroupDetail(String groupId);
  ResultOrException<Group> createGroup(Group request,
      {File? file, bool? isEdit});

  ResultOrException<Group> joinGroup(String id, bool isJoin);

  /// User can accept/reject invite from a group
  ResultOrException<Group> acceptInvite(String groupId, bool isAccept);

  /// Admin can accept/reject users request to his group
  ResultOrException<Group> groupJoinRequest(
      {required String groupId,
      required String userId,
      required bool isAccepted});

  ResultOrException<Map<String, dynamic>> deleteById(String endpoint);

  // ResultOrException< List<GroupMember>> getGroupMembers(String groupId);
  // Future<Either<String, bool>> inviteMembers(GroupInviteRequest request);
  ResultOrException<Group> cancelJoinRequest(String groupId);
  ResultOrException<Group> cancelgroupInvite(String groupId, String userId);

  /// Create tabs for group
  ResultOrException<Group> addSectionInGroup(String groupId, Section tab,
      {bool isEdit = false});

  ResultOrException<Group> updateMemberRole(
      String groupId, String memberId, String role);
}
