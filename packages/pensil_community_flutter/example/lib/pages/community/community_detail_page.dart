import 'package:example/pages/community/group/group_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class CommunityDetailPage extends StatelessWidget {
  const CommunityDetailPage({Key? key, this.communityId}) : super(key: key);

  static Route<T> getRoute<T>(PensilClient pensilClient) {
    return MaterialPageRoute(
      builder: (_) {
        return CommunityProvider(
          bloc: CommunityBloc(pensilClient: pensilClient),
          child: CommunityDetailPage(
            communityId: pensilClient.communityId,
          ),
        );
      },
    );
  }

  final String? communityId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PensilCommunityBuilder(
        errorBuilder: (_, err) {
          return Center(
            child: Text(err.message),
          );
        },
        builder: (_, Community? community) {
          return PensilGroupListView(
            communityId: communityId!,
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
