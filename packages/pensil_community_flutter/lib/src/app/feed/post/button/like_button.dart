import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';
import 'package:pensil_community_flutter/src/core/domain/post_action.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

// ignore_for_file: cascade_invocations

/// {@template _comment_button}
/// A like button that displays a post like icon.
///
/// Used to toggle like when clicked.
/// {@endtemplate}
class LikeButton extends StatelessWidget {
  /// Builds a [LikeButton].
  const LikeButton({
    Key? key,
    required this.post,
    this.iconSize = 14,
    required this.onActionTrigger,
  }) : super(key: key);

  /// The post to post to the feed.
  final Post post;

  /// The size of the icon to display.
  final double iconSize;

  /// {@macro post_action_callback}
  final OnActionTrigger onActionTrigger;

  /// Total number of comments to the post.
  int? get count => post.likes;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          splashRadius: iconSize + 4,
          iconSize: iconSize,
          hoverColor: Colors.blue.shade100,
          onPressed: () => onActionTrigger(PostAction.onLike(post)),
          icon: Icon(
            post.isLikedByMe ? Icons.favorite : Icons.favorite_border,
            color: post.isLikedByMe
                ? Colors.red
                : PensilTheme.of(context).primaryIconTheme.color,
          ),
        ),
        if (count != null && count! > 0) Text('${count!}'),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Post>('post', post));
    properties.add(DoubleProperty('iconSize', iconSize));
    properties.add(IntProperty('count', count));
  }
}
