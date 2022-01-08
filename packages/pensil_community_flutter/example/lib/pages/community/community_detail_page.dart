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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PensilCommunityBuilder(
        builder: (_, Community? community) {
          return PensilGroupListView(
            communityId: bloc.communityId,
            onGroupTileTap: (group) {
              Navigator.push(
                context,
                GroupDetailPage.getRoute(context.communityClient, group!),
              );
            },
          );
        },
      ),
    );
  }
}
