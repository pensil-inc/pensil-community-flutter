import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/feed/post/content/content.dart';
import 'package:pensil_community_flutter/src/app/feed/post/footer.dart';
import 'package:pensil_community_flutter/src/app/feed/post/header.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

// ignore_for_file: cascade_invocations

/// {@template post_widget}
/// A widget that displays a single post.
/// i.e. a single post in a feed
/// {@endtemplate}
class PostWidget extends StatelessWidget {
  ///{@macro post_widget}
  const PostWidget({
    Key? key,
    required this.sectionId,
    required this.post,
    required this.onActionTrigger,
    this.feedGroup = 'user',
    this.onHashtagTap,
    this.onMentionTap,
    this.onUserTap,
    this.postFooterBuilder,
    this.postContentBuilder,
    this.postHeaderBuilder,
    this.onPostTap,
  }) : super(key: key);

  final String sectionId;

  /// The post to display.
  final Post post;

  /// A callback to invoke when a mention is tapped.
  final OnMentionTap? onMentionTap;

  /// {@macro mention_callback}
  final OnHashtagTap? onHashtagTap;

  /// {@macro user_callback}
  final OnUserTap? onUserTap;

  /// {@macro post_tap_callback}
  final OnPostTap? onPostTap;

  /// A builder for the post footer.
  final PostFooterBuilder? postFooterBuilder;

  /// A builder for the post content.
  final PostContentBuilder? postContentBuilder;

  /// A builder for the post header.
  final PostHeaderBuilder? postHeaderBuilder;

  /// The group of the feed this post belongs to.
  final String feedGroup;

  /// {@macro post_action_callback}
  final OnActionTrigger onActionTrigger;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPostTap?.call(context, post);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          postHeaderBuilder?.call(context, post) ??
              PostHeader(
                feedGroup: feedGroup,
                post: post,
                onUserTap: onUserTap,
                onActionTrigger: onActionTrigger,
              ),
          postContentBuilder?.call(context, post) ??
              PostContent(
                post: post,
                onHashtagTap: onHashtagTap,
                onMentionTap: onMentionTap,
              ),
          postFooterBuilder?.call(context, post, onActionTrigger) ??
              PostFooter(post: post, onActionTrigger: onActionTrigger),
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
    properties.add(ObjectFlagProperty<OnUserTap?>.has('onUserTap', onUserTap));
    properties.add(ObjectFlagProperty<OnPostTap?>.has('onPostTap', onPostTap));
    properties.add(ObjectFlagProperty<PostFooterBuilder?>.has(
        'postFooterBuilder', postFooterBuilder));
    properties.add(ObjectFlagProperty<PostContentBuilder?>.has(
        'postContentBuilder', postContentBuilder));
    properties.add(ObjectFlagProperty<PostHeaderBuilder?>.has(
        'postHeaderBuilder', postHeaderBuilder));
    properties.add(StringProperty('feedGroup', feedGroup));
  }
}
