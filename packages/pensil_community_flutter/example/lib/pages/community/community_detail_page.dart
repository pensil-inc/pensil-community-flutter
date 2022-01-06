import 'package:example/helper/pensillog.dart';
import 'package:example/pages/community/group/group_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class CommunityDetailPage extends StatefulWidget {
  const CommunityDetailPage({Key? key}) : super(key: key);

  static Route<T> getRoute<T>(PensilClient pensilClient) {
    return MaterialPageRoute(
      builder: (_) {
        return CommunityProvider(
          bloc: CommunityBloc(pensilClient: pensilClient),
          child: const CommunityDetailPage(),
        );
      },
    );
  }

  @override
  State<CommunityDetailPage> createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<CommunityDetailPage>
    with CommunityMixin {
  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (community == null) {
      getCommunityDetail();
    }
  }

  void isBusy(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  void getCommunityDetail() async {
    isBusy(true);
    final response = await client.get;
    response.fold((l) => PencilLog.cprint('', error: l), (data) {
      PencilLog.cprint('Community received fron client');
      community = data;
    });
    isBusy(false);
  }

  Community? community;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(community != null ? community!.name! : ''),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : PensilGroupListView(
              communityId: bloc.communityId,
              onGroupTileTap: (group) {
                Navigator.push(
                  context,
                  GroupDetailPage.getRoute(context.communityClient, group!),
                );
              },
            ),
    );
  }
}
