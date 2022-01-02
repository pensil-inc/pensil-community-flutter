import 'package:pensil_community_core/src/client/community/community_client_impl.dart';
import 'package:pensil_community_core/src/client/group/group_client.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

abstract class CommunityClient {
  factory CommunityClient(
    PensilApi? pensilApi,
    String communityId,
  ) =>
      CommunityClientImpl(pensilApi, communityId);

  ResultOrError<Community> get get;
  ResultOrError<List<Group>> get getGroups;

  GroupClient group(String groupId);
}
