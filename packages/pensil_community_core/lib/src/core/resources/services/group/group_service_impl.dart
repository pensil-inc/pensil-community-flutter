part of 'group_service.dart';

@Injectable(as: GroupService)
class GroupServiceImpl implements GroupService {
  @override
  ResultOrException<Group> acceptInvite(String groupId, bool isAccept) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> addSectionInGroup(String groupId, Section tab,
      {bool isEdit = false}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> cancelJoinRequest(String groupId) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> cancelgroupInvite(String groupId, String userId) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> createGroup(Group request,
      {File? file, bool? isEdit}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Map<String, dynamic>> deleteById(String endpoint) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> getGroupDetail(String groupId) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> groupJoinRequest(
      {required String groupId,
      required String userId,
      required bool isAccepted}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> joinGroup(String id, bool isJoin) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Group> updateMemberRole(
      String groupId, String memberId, String role) {
    throw UnimplementedError();
  }
}
