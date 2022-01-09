import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/theme/theme.dart';
import 'package:pensil_community_flutter/src/app/widget/index.dart';

class RealtimePostTile extends StatelessWidget {
  final Post post;
  const RealtimePostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
          UserTile(
            user: post.createdBy!,
            showSubtitle: true,
            subtitle: Text(
              post.description ?? '',
              style: UserTileTheme.of(context).timestampTextStyle,
            ),
            afterUsername: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 4),
              child: Text(
                post.createdAt!.toDateTime!
                    .toUtc()
                    .toLocal()
                    .format('hh:mm a')!,
                style: theme.textTheme.bodyText1!.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Post>('post', post));
  }
}
