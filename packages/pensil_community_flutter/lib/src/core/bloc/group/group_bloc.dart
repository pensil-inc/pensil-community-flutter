import 'package:flutter/foundation.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';
import 'package:pensil_community_flutter/src/core/bloc/group/group_controller.dart';

class GroupBloc extends GenericBloc<GroupClient> {
  GroupBloc({
    required CommunityClient communityClient,
    required String groupId,
  }) : super(client: communityClient.group(groupId)) {
    groupManager = GroupManager<Section>();
    groupManager.init(groupId);
  }

  String get groupId => client.groupId;

  /// Manager for [Group]].
  @visibleForTesting
  late GroupManager<Section> groupManager;

  List<Section>? getSections(String groupId) =>
      groupManager.getSection(groupId);

  Stream<List<Section>>? getSectionListStream(String sectionId) =>
      groupManager.getStream(sectionId);

  ///  Clear [section]] for a given `sectionId`.
  void clearSection(String sectionId) => groupManager.clearSection(sectionId);

  ///  Clear all [Group]] for the given `feedGroups`.
  void clearAllSections(List<String> feedGroups) =>
      groupManager.clearAllSections(feedGroups);

  void addAllSections(List<Section> sections) =>
      groupManager.addAllSections(groupId, sections);
}
