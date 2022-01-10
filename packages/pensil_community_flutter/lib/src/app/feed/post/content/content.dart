import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';
import 'package:pensil_community_flutter/src/app/feed/post/content/post_title.dart';
import 'package:pensil_community_flutter/src/app/feed/post/content/widget/link_preview.dart';
import 'package:pensil_community_flutter/src/app/feed/post/content/widget/video_thumbnail.dart';
import 'package:pensil_community_flutter/src/app/feed/post/post_images.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/app/widget/index.dart';
import 'package:pensil_community_flutter/src/app/feed/post/content/widget/document_card.dart';

// ignore_for_file: cascade_invocations

/// {@template post_content}
/// Displays the content of an post.
///
/// This would be the actual text of the post, the media, etc.
/// {@endtemplate}
class PostContent extends StatelessWidget {
  /// Builds an [PostContent].
  const PostContent({
    Key? key,
    required this.post,
    this.onMentionTap,
    this.onHashtagTap,
  }) : super(key: key);

  /// The post that is being displayed.
  final Post post;

  /// {@macro mention_callback}
  final OnMentionTap? onMentionTap;

  /// A callback that is invoked when the user clicks on hashtag
  final OnHashtagTap? onHashtagTap;

  String get description {
    String? description = post.description;
    if (!description.isNotNullEmpty) {
      return '';
    }
    bool isLive = post.liveMeeting != null && post.liveMeeting!.isLive;
    bool isLivePost = post.liveMeeting != null;
    if (isLivePost && !isLive) {
      description = "Meeting has ended";
    } else {
      description = description!.replaceAll("\n", "\n\n");
    }
    return description;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TODO: Display live meeting banner
          /// TODO: Display recorded meeting banner
          PostTitle(title: post.title),
          PostImages(list: post.images),
          DocumentCard(path: post.document, name: post.documentName),
          VideoCard(model: post),
          MarkdownViewer(
            markdownData: description,
            onTapLink: (url, a, b) {},
            maxCharacters: 500,
          ),
          LinkPreview(text: post.description ?? ''),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Post>('post', post));
    properties.add(
        ObjectFlagProperty<OnMentionTap?>.has('onMentionTap', onMentionTap));
    properties.add(
        ObjectFlagProperty<OnHashtagTap?>.has('onHashtagTap', onHashtagTap));
  }
}
