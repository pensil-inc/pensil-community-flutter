import 'package:pensil_community_core/src/client/group/group_client_impl.dart';
import 'package:pensil_community_core/src/client/section/section_client.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

abstract class GroupClient {
  factory GroupClient(
          PensilApi pensilApi, String communityId, String groupId) =>
      GroupClientImpl(pensilApi, communityId, groupId);

  SectionClient sectionClient(String sectionId);

  ResultOrError<Group> get get;
}
