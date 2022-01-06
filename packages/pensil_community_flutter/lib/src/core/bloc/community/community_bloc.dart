import 'dart:developer';

import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';

class CommunityBloc extends BlocBaseClass<Group, CommunityClient> {
  CommunityBloc({
    required PensilClient pensilClient,
  }) : super(
          client: pensilClient.community,
          id: pensilClient.communityId,
        );

  @override
  void initBloc() {}

  String get communityId => id;
  Stream<List<Group>>? getGroupListStream() =>
      controller.getStreamById(communityId);

  List<Group>? get groupList => controller.getListById(communityId);

  void fetchGroupList() async {
    final response = await client.getGroups;
    response.fold(
      (l) {
        log('error: $l');
      },
      (data) {
        log('Groups received from client');
        controller.addAllById(communityId, data);
      },
    );
  }

  void addAllGroups(List<Group> groups) =>
      controller.addAllById(communityId, groups);

  @override
  void dispose() {
    super.dispose();
  }
}
