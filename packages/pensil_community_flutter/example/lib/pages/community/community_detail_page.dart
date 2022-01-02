import 'package:example/helper/extention.dart';
import 'package:example/helper/pensillog.dart';
import 'package:example/pages/community/group/group_detail_page.dart';
import 'package:example/provider/community_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class CommunityDetailPage extends StatefulWidget {
  const CommunityDetailPage({Key? key}) : super(key: key);

  static Route<T> getRoute<T>(PensilClient pensilClient) {
    return MaterialPageRoute(
      builder: (_) {
        return CommunityProvider(
          communityClient: pensilClient.community,
          child: const CommunityDetailPage(),
        );
      },
    );
  }

  @override
  State<CommunityDetailPage> createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<CommunityDetailPage> {
  late CommunityClient? _communityClient;

  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _communityClient = context.communityClient;
    if (community == null) {
      getCommunityDetail();
    }
  }

  void isBusy(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  void getCommunityGroups() async {
    isBusy(true);
    final response = await _communityClient!.getGroups;
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (data) {
        PencilLog.cprint('Groups received from client');
        setState(() {
          groups = data;
        });
      },
    );
    isBusy(false);
  }

  void getCommunityDetail() async {
    isBusy(true);
    final response = await _communityClient!.get;
    response.fold((l) => PencilLog.cprint('', error: l), (data) {
      PencilLog.cprint('Community received fron client');
      community = data;
    });
    isBusy(false);
  }

  List<Group>? groups;
  Community? community;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(community != null ? community!.name! : ''),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : groups != null
              ? GroupList(groups: groups!)
              : _buttons(),
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (community == null)
          Center(
            child: ElevatedButton(
              child: const Text('Get Community'),
              onPressed: getCommunityDetail,
            ),
          ),
        if (community != null)
          Center(
            child: ElevatedButton(
              child: const Text('Get Groups'),
              onPressed: getCommunityGroups,
            ),
          ),
      ],
    );
  }
}

class GroupList extends StatelessWidget {
  const GroupList({Key? key, required this.groups}) : super(key: key);
  final List<Group> groups;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (context, index) {
        final group = groups[index];
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
              Navigator.push(context,
                  GroupDetailPage.getRoute(context.communityClient, group));
            },
            title: Text(
              group.name!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff333333),
              ),
            ),
            subtitle: Text(describeEnum(group.groupType!)),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        );
      },
    );
  }
}
