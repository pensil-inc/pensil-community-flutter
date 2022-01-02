import 'package:pensil_community_core/src/client/group/group_client.dart';
import 'package:pensil_community_core/src/client/section/section_client.dart';
import 'package:pensil_community_core/src/client/section/section_client_impl.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/group/group_service.dart';

class GroupClientImpl implements GroupClient {
  GroupClientImpl(PensilApi? pensilApi, this.communityId, this.groupId)
      : pensilApi = pensilApi ?? PensilApiImpl(communityId);

  final String communityId;
  final String groupId;
  late final PensilApi pensilApi;

  GroupService get _service => pensilApi.groupService;

  SectionClient? _sectionClient;
  @override
  SectionClient sectionClient(String sectionId) {
    if (_sectionClient != null && _sectionClient!.sectionId == sectionId) {
      return _sectionClient!;
    }
    return _sectionClient =
        SectionClientImpl(pensilApi, communityId, groupId, sectionId);
  }

  @override
  ResultOrError<Group> get get => _service.getGroupDetail(groupId);
}
