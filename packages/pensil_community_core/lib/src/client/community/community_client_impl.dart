import 'package:pensil_community_core/src/client/community/community_client.dart';
import 'package:pensil_community_core/src/client/group/group_client.dart';
import 'package:pensil_community_core/src/client/group/group_client_impl.dart';
import 'package:pensil_community_core/src/core/domain/cache.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/community/community_service.dart';

class CommunityClientImpl implements CommunityClient {
  CommunityClientImpl(
    PensilApi? pensilApi,
    this.communityId,
  ) : _pensilApi = pensilApi ?? PensilApiImpl(communityId) {
    clientCache = Cache<String, GroupClient>();
  }

  late final PensilApi _pensilApi;
  final String communityId;

  CommunityService get _service => _pensilApi.communityService;

  late Cache<String, GroupClient> clientCache;

  @override
  GroupClient group(String groupId) {
    if (clientCache.hasKey(groupId)) {
      return clientCache[groupId]!;
    } else {
      final client = GroupClientImpl(_pensilApi, communityId, groupId);
      clientCache.add(groupId, client);
      return client;
    }
  }

  @override
  ResultOrException<Community> get get =>
      _service.getCommunityById(communityId);

  @override
  ResultOrException<List<Group>> get getGroups =>
      _service.getCommunityGroups(communityId);
}
