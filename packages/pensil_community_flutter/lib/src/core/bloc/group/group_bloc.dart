import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';

class GroupBloc extends BlocBaseClass<Section, GroupClient> {
  GroupBloc({
    required CommunityClient communityClient,
    required String groupId,
  }) : super(client: communityClient.group(groupId), id: groupId);

  @override
  void initBloc() {
    controller.init(groupId);
  }

  String get groupId => client.groupId;

  List<Section>? getSections(String groupId) => controller.getListById(groupId);

  Stream<List<Section>>? getSectionListStream(String sectionId) =>
      controller.getStreamById(sectionId);

  ///  Clear [section]] for a given `sectionId`.
  void clearSection(String sectionId) => controller.clearById(sectionId);

  ///  Clear all [Group]] for the given `feedGroups`.
  void clearAllSections(List<String> feedGroups) =>
      controller.clearAll(feedGroups);

  void addAllSections(List<Section> sections) =>
      controller.addAllById(groupId, sections);
}
