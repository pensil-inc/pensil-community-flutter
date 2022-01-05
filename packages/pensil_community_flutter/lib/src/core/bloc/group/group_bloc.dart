import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';

class GroupBloc extends GenericBloc<GroupClient> {
  GroupBloc({
    required CommunityClient communityClient,
    required String groupId,
  }) : super(client: communityClient.group(groupId));
}
