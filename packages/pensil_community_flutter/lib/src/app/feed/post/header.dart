import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/theme/theme.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/app/widget/index.dart';
import 'package:pensil_community_flutter/src/core/bloc/extention.dart';
import 'package:pensil_community_flutter/src/core/domain/post_action.dart';

// ignore_for_file: cascade_invocations

/// {@template activity_header}
/// Displays the user's name and a profile image.
/// {@endtemplate}
class PostHeader extends StatelessWidget {
  /// Builds an [PostHeader].
  const PostHeader({
    Key? key,
    required this.post,
    required this.feedGroup,
    required this.onActionTrigger,
    this.onUserTap,
    this.showSubtitle = true,
  }) : super(key: key);

  /// TODO: document me
  final Post post;

  ///{@macro user_callback}
  final OnUserTap? onUserTap;

  /// TODO: document me
  final bool showSubtitle;

  /// The feed group that the post belongs to.
  ///
  /// Ex: 'timeline'.
  final String feedGroup;

  /// {@macro post_action_callback}
  final OnActionTrigger onActionTrigger;

  @override
  Widget build(BuildContext context) {
    final pensilUser = context.pensilClient.curentUser;
    final loggedinUserId = pensilUser.userId;

    return UserTile(
      activityId: post.id!,
      feedGroup: feedGroup,
      user: post.createdBy!,
      onUserTap: onUserTap,
      showReactedBy: true,
      showSubtitle: showSubtitle,
      subtitle: HumanReadableTimestamp(
        timestamp: DateTime.tryParse(post.createdAt!)!,
        textStyle: UserTileTheme.of(context).timestampTextStyle,
      ),
      trailing: loggedinUserId != post.createdBy!.id
          ? null
          : PopupAction(
              list: [
                Choice(
                  title: 'Delete',
                  onTap: () => onActionTrigger(
                    PostAction.onDelete(post),
                  ),
                ),
              ],
            ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('showSubtitle', showSubtitle));
    properties.add(DiagnosticsProperty<Post>('post', post));
    properties.add(ObjectFlagProperty<OnUserTap?>.has('onUserTap', onUserTap));
  }
}
