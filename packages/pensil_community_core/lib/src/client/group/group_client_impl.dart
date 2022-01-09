import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_core/src/client/section/section_client_impl.dart';
import 'package:pensil_community_core/src/core/domain/cache.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/group/group_service.dart';

class GroupClientImpl implements GroupClient {
  GroupClientImpl(PensilApi? pensilApi, this.communityId, this._groupId)
      : pensilApi = pensilApi ?? PensilApiImpl(communityId) {
    clientCache = Cache<String, SectionClient>();
  }

  final String communityId;
  late final PensilApi pensilApi;

  GroupService get _service => pensilApi.groupService;

  late Cache<String, SectionClient> clientCache;

  final String _groupId;
  @override
  String get groupId => _groupId;

  @override
  SectionClient sectionClient(String sectionId) {
    if (clientCache.hasKey(sectionId)) {
      return clientCache[sectionId]!;
    } else {
      final client =
          SectionClientImpl(pensilApi, communityId, groupId, sectionId);
      clientCache.add(sectionId, client);
      return client;
    }
  }

  @override
  ResultOrError<Group> get get => _service.getGroupDetail(groupId);
}
