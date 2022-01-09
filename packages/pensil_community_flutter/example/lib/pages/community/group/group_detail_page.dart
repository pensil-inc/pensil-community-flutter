import 'package:example/pages/community/group/section/section_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class GroupDetailPage extends StatelessWidget {
  const GroupDetailPage({Key? key, required this.group}) : super(key: key);

  /// Material Route page to open Group detail
  static Route<T> getRoute<T>(CommunityClient communityClient, Group group) {
    return MaterialPageRoute(
      builder: (_) {
        return GroupProvider(
          bloc: GroupBloc(
            communityClient: communityClient,
            groupId: group.id!,
          )..addAllSections(group.sections!),
          child: GroupDetailPage(group: group),
        );
      },
    );
  }

  final Group group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(group.name!)),
      body: PensilSectionListView(
        groupId: group.id!,
        onSectionTileTap: (section) {
          final bloc = GroupProvider.of(context).bloc;
          Navigator.push(
            context,
            SectionfeedPage.getRoute(bloc.client, section!),
          );
        },
      ),
    );
  }
}
