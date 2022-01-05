import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

// ignore_for_file: cascade_invocations

/// {@template _comment_button}
/// A comment button that displays a post comment icon.
///
/// Used to post a reply to a post when clicked.
/// {@endtemplate}
class ComemntButton extends StatelessWidget {
  /// Builds a [ComemntButton].
  const ComemntButton({
    Key? key,
    required this.post,
    this.iconSize = 14,
  }) : super(key: key);

  /// The activity to post to the feed.
  final Post post;

  /// The size of the icon to display.
  final double iconSize;

  /// Total number of comments to the post.
  int? get count => post.commentCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        IconButton(
          splashRadius: iconSize + 4,
          iconSize: iconSize,
          hoverColor: Colors.blue.shade100,
          onPressed: () {},
          icon: Icon(
            Icons.comment_outlined,
            color: PensilTheme.of(context).primaryIconTheme.color,
          ),
        ),
        if (count != null && count! > 0) Text('${count!}')
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
