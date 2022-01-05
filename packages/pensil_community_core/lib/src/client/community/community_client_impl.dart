import 'package:pensil_community_core/src/client/community/community_client.dart';
import 'package:pensil_community_core/src/client/group/group_client.dart';
import 'package:pensil_community_core/src/client/group/group_client_impl.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/community/community_service.dart';

class CommunityClientImpl implements CommunityClient {
  CommunityClientImpl(
    PensilApi? pensilApi,
    this.communityId,
  ) : _pensilApi = pensilApi ?? PensilApiImpl(communityId);

  late final PensilApi _pensilApi;
  final String communityId;

  CommunityService get _service => _pensilApi.communityService;

  GroupClient? _groupClient;

  @override
  GroupClient group(String groupId) {
    if (_groupClient != null && _groupClient!.groupId == groupId) {
      return _groupClient!;
    }
    return _groupClient = GroupClientImpl(_pensilApi, communityId, groupId);
  }

  @override
  ResultOrError<Community> get get => _service.getCommunityById(communityId);

  @override
  ResultOrError<List<Group>> get getGroups =>
      _service.getCommunityGroups(communityId);
}
