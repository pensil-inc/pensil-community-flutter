import 'dart:developer';

import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc_controller.dart';

class CommunityBloc extends BlocBaseClass<CommunityClient> {
  CommunityBloc({
    required PensilClient pensilClient,
  }) : super(client: pensilClient.community, id: pensilClient.communityId);

  @override
  void initBloc() {
    _community = ValueController<Community>();

    controller = ListController<Group>();
    controller.init(id);
  }

  late ValueController<Community> _community;

  late ListController<Group> controller;

  Stream<Community?> get communityStream => _community.getStream;

  String get communityId => id;
  Stream<List<Group>>? get getGroupListStream =>
      controller.getStreamById(communityId);

  List<Group>? get groupList => controller.getListById(communityId);

  void fetchCommunityDetail() async {
    final response = await client.get;
    response.fold((err) {
      _community.addError(err);
    }, (data) {
      _community.add(data);
    });
  }

  void fetchGroupList() async {
    final response = await client.getGroups;
    response.fold(
      (error) {
        log('error: $error');
        controller.addError(id, error, StackTrace.empty);
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
    _community.close();
    super.dispose();
  }
}
