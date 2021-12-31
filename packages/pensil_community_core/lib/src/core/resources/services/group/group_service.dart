import 'dart:io';

import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';

part 'group_service_impl.dart';

abstract class GroupService {
  ResultOrError<Group> getGroupDetail(String groupId);
  ResultOrError<Group> createGroup(Group request, {File? file, bool? isEdit});

  ResultOrError<List<Group>> getGroups({String? userId});
  ResultOrError<Group> joinGroup(String id, bool isJoin);

  /// User can accept/reject invite from a group
  // ignore: avoid_positional_boolean_parameters
  ResultOrError<Group> acceptInvite(String groupId, bool isAccept);

  /// Admin can accept/reject users request to his group
  ResultOrError<Group> groupJoinRequest(
      {String groupId, String userId, bool isAccepted});

  /// Admin can accept/reject users request to his closed section
  ///
  ///  Set [isAccepted] and [isRejected] to false to send join request
  ///
  /// Set [isAccepted] to true to accept join request
  ///
  /// Set [isRejected] to true to reject join request
  ResultOrError<Group> sectionJoinRequest({
    required String groupId,
    required String sectionId,
    required String userId,
    required bool isAccepted,
    required bool isRejected,
  });

  ResultOrError<Map<String, dynamic>> deleteById(String endpoint);

  // ResultOrError< List<GroupMember>> getGroupMembers(String groupId);
  // Future<Either<String, bool>> inviteMembers(GroupInviteRequest request);
  ResultOrError<Group> cancelJoinRequest(String groupId);
  ResultOrError<Group> cancelgroupInvite(String groupId, String userId);

  /// Create tabs for group
  ResultOrError<Group> addSectionInGroup(String groupId, Tab tab,
      {bool isEdit = false});

  ResultOrError<Group> updateMemberRole(
      String groupId, String memberId, String role);
}
