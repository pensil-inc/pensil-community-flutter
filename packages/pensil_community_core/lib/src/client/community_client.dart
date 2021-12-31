import 'package:pensil_community_core/src/client/group_client.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/community/community_service.dart';

class CommunityClient {
  CommunityClient(
    this._pensilApi, {
    required this.communityId,
  });

  final PensilApi _pensilApi;
  final String communityId;

  CommunityService get _service => _pensilApi.communityService;

  ResultOrError<Community> get() => _service.getCommunityById(communityId);
  ResultOrError<List<Group>> getGroups() =>
      _service.getCommunityGroups(communityId);

  GroupClient group(String groupId) =>
      GroupClient(_pensilApi, groupId: groupId);
}
