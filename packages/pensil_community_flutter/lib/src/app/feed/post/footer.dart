import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/feed/post/button/comment_button.dart';
import 'package:pensil_community_flutter/src/app/feed/post/button/like_button.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

// ignore_for_file: cascade_invocations

/// {@template post_footer}
/// Displays the footer content for an post.
///
/// This would be reaction buttons, the post, re-post, and like buttons, etc.
/// {@endtemplate}
class PostFooter extends StatelessWidget {
  ///{@macro post_footer}
  const PostFooter({
    Key? key,
    required this.post,
    this.sectionId = 'user',
    required this.onActionTrigger,
  }) : super(key: key);

  /// post
  final Post post;

  /// section of the post
  final String sectionId;

  /// {@macro post_action_callback}
  final OnActionTrigger onActionTrigger;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LikeButton(
              post: post, iconSize: 20, onActionTrigger: onActionTrigger),
          CommentButton(post: post, iconSize: 20),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Post>('post', post));
    properties.add(StringProperty('sectionId', sectionId));
  }
}
