import 'package:example/pages/community/group/section/section_feed_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

/// Group detail page displays list of section
class GroupDetailPage extends StatefulWidget {
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
  State<GroupDetailPage> createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<GroupDetailPage> with GroupMixin {
  Group get group => widget.group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(group.name!)),
      body: PensilSectionListView(
        groupId: bloc.groupId,
        onSectionTileTap: (section) {
          Navigator.push(
            context,
            SectionfeedPage.getRoute(bloc.client, section!),
          );
        },
      ),
    );
  }
}
