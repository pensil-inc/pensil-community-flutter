import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/app/widget/index.dart';

// ignore_for_file: cascade_invocations

/// {@template activity_content}
/// Displays the content of an activity.
///
/// This would be the actual text of the activity, the media, etc.
/// {@endtemplate}
class PostContent extends StatelessWidget {
  /// Builds an [PostContent].
  const PostContent({
    Key? key,
    required this.post,
    this.onMentionTap,
    this.commentJsonKey = 'comment',
    this.onHashtagTap,
  }) : super(key: key);

  /// The activity that is being displayed.
  final Post post;

  /// {@macro mention_callback}
  final OnMentionTap? onMentionTap;

  /// A callback that is invoked when the user clicks on hashtag
  final OnHashtagTap? onHashtagTap;

  /// TODO: document me
  final String commentJsonKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          MarkdownViewer(
            markdownData: post.description ?? '',
            onTapLink: (url, a, b) {},
          ),
          // if (attachments != null)
          //   ActivityCard(
          //     og: OpenGraphData.fromJson(attachments as Map<String, dynamic>),
          //   )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Post>('activity', post));
    properties.add(
        ObjectFlagProperty<OnMentionTap?>.has('onMentionTap', onMentionTap));
    properties.add(
        ObjectFlagProperty<OnHashtagTap?>.has('onHashtagTap', onHashtagTap));
    properties.add(StringProperty('commentJsonKey', commentJsonKey));
  }
}
