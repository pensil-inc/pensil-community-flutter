part of 'group_service.dart';

@Injectable(as: GroupService)
class GroupServiceImpl implements GroupService {
  @override
  ResultOrError<Group> acceptInvite(String groupId, bool isAccept) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> addSectionInGroup(String groupId, Section tab,
      {bool isEdit = false}) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> cancelJoinRequest(String groupId) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> cancelgroupInvite(String groupId, String userId) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> createGroup(Group request, {File? file, bool? isEdit}) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Map<String, dynamic>> deleteById(String endpoint) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> getGroupDetail(String groupId) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> groupJoinRequest(
      {required String groupId,
      required String userId,
      required bool isAccepted}) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> joinGroup(String id, bool isJoin) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Group> updateMemberRole(
      String groupId, String memberId, String role) {
    throw UnimplementedError();
  }
}
