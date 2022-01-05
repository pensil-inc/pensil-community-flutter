import 'package:example/pages/community/group/section/section_feed_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class GroupDetailPage extends StatefulWidget {
  const GroupDetailPage({Key? key, required this.group}) : super(key: key);

  static Route<T> getRoute<T>(CommunityClient communityClient, Group group) {
    return MaterialPageRoute(
      builder: (_) {
        return GroupProvider(
          bloc: GroupBloc(
            communityClient: communityClient,
            groupId: group.id!,
          ),
          child: GroupDetailPage(group: group),
        );
      },
    );
  }

  final Group group;
  @override
  State<GroupDetailPage> createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<GroupDetailPage> {
  // ignore: unused_field
  late GroupClient? _groupClient;
  bool isLoading = false;
  Group get group => widget.group;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _groupClient = context.groupClient;
  }

  void isBusy(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(group.name!)),
        body: isLoading
            ? const Center(child: CircularProgressIndicator())
            : SectionList(sections: group.sections!));
  }
}

class SectionList extends StatelessWidget {
  const SectionList({Key? key, required this.sections}) : super(key: key);
  final List<Section> sections;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sections.length,
      itemBuilder: (context, index) {
        final section = sections[index];
        return Container(
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            ),
          ),
          child: ListTile(
            onTap: () {
              final groupClient = context.groupClient;
              Navigator.push(
                context,
                SectionfeedPage.getRoute(
                  groupClient,
                  section,
                ),
              );
            },
            title: Row(
              children: [
                Text(
                  '${section.emoji.valueOrDefault} ${section.name!}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333),
                  ),
                ),
              ],
            ),
            subtitle: Text(describeEnum(section.sectionType)),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        );
      },
    );
  }
}
