import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/app/feed/post/post_widget.dart';
import 'package:pensil_community_flutter/src/app/feed/post_feed_core.dart';
import 'package:pensil_community_flutter/src/app/utils/transition_enum.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

class PensilPostFeedListView extends StatelessWidget {
  /// {@template post_feed_list_page}
  /// Display a list of post.
  /// `postFooterBuilder` is a builder for the footer of the post.
  ///
  /// `postHeaderBuilder` is a builder for the header of the post.
  ///
  /// `postContentBuilder` is a builder for the body of the post.
  ///
  /// `postBuilder` is a builder for complete post.
  ///
  /// `onPostTap` is a callback for when a post is tapped.
  ///
  /// `onUserTap` is a callback for when a user avatar is tapped.
  ///
  /// {@endtemplate}

  const PensilPostFeedListView({
    Key? key,
    this.onHashtagTap,
    this.onMentionTap,
    this.onUserTap,
    this.postFooterBuilder,
    this.postContentBuilder,
    this.postHeaderBuilder,
    required this.sectionId,
    this.postBuilder,
    this.onProgressWidget = const ProgressStateWidget(),
    this.onErrorWidget = const ErrorStateWidget(),
    this.onEmptyWidget = const EmptyStateWidget(message: 'No post to display'),
    this.onPostTap,
    this.transitionType = TransitionType.material,
    this.scrollPhysics,
  }) : super(key: key);

  /// A section id to fetch post for
  final String sectionId;

  /// {@macro hashtag_callback}
  final OnHashtagTap? onHashtagTap;

  /// {@macro mention_callback}
  final OnMentionTap? onMentionTap;

  /// {@macro user_callback}
  final OnUserTap? onUserTap;

  /// Builds the post footer
  ///```dart
  /// PensilPostFeedListView(
  ///       sectionId: id,
  ///       postFooterBuilder: (
  ///         BuildContext context,
  ///         Post post,
  ///         void Function(PostAction) onActionTrigger,
  ///       ) {
  ///         return Row(
  ///           children: [
  ///             IconButton(
  ///               onPressed: () {
  ///                 onActionTrigger(PostAction.onLike(post));
  ///               },
  ///               icon: const Icon(Icons.thumb_up),
  ///             ),
  ///             Text(post.likes.toString()),
  ///             const SizedBox(width: 16),
  ///             IconButton(
  ///               onPressed: () {
  ///                 onActionTrigger(PostAction.onUserTap(post));
  ///               },
  ///               icon: const Icon(Icons.comment),
  ///             ),
  ///             Text(post.commentCount.toString()),
  ///           ],
  ///         );
  ///       },
  ///     );
  ///   },
  /// )
  /// ```
  final PostFooterBuilder? postFooterBuilder;

  final PostContentBuilder? postContentBuilder;

  /// Builder for post.
  ///
  /// ```dart
  /// return PensilPostFeedListView(
  ///    sectionId: id,
  ///    postBuilder: (BuildContext context, Post post,
  ///        void Function(PostAction) onActionTrigger) {
  ///      return Card(
  ///        child: Column(
  ///          children: [
  ///            ListTile(
  ///              leading: CircleAvatar(
  ///                backgroundImage: post.createdBy!.picture == null
  ///                    ? null
  ///                    : NetworkImage(post.createdBy!.picture!),
  ///              ),
  ///              title: Text(post.createdBy!.name),
  ///              subtitle: Text(post.createdAt!.toString()),
  ///            ),
  ///            Padding(
  ///              padding: const EdgeInsets.symmetric(horizontal: 16),
  ///              child: ListBody(
  ///                children: [
  ///                  Text(post.description ?? ""),
  ///                  Row(
  ///                    children: [
  ///                      IconButton(
  ///                        onPressed: () {
  ///                          onActionTrigger(PostAction.onLike(post));
  ///                        },
  ///                        icon: const Icon(Icons.thumb_up),
  ///                      ),
  ///                      Text(post.likes.toString()),
  ///                      const SizedBox(width: 16),
  ///                      IconButton(
  ///                        onPressed: () {
  ///                          onActionTrigger(PostAction.onUserTap(post));
  ///                        },
  ///                        icon: const Icon(Icons.comment),
  ///                      ),
  ///                      Text(post.commentCount.toString()),
  ///                    ],
  ///                  )
  ///                ],
  ///              ),
  ///            )
  ///          ],
  ///        ),
  ///      );
  ///    },
  ///  );
  ///},
  /// ```
  final PostBuilder? postBuilder;

  /// Builds the post header
  ///```dart
  /// return PensilPostFeedListView(
  ///   sectionId: id,
  ///   postHeaderBuilder: (BuildContext context, Post post) {
  ///     return ListTile(
  ///       leading: CircleAvatar(
  ///         backgroundImage: post.createdBy!.picture == null
  ///             ? null
  ///             : NetworkImage(post.createdBy!.picture!),
  ///       ),
  ///       title: Text(post.createdBy!.name),
  ///       subtitle: Text(post.createdAt!.toString()),
  ///     );
  ///   },
  ///   ;

  ///```
  final PostHeaderBuilder? postHeaderBuilder;

  /// {@macro post_tap_callback}
  final OnPostTap? onPostTap;

  /// A widget to display when there is an error in the request
  final Widget onErrorWidget;

  /// A widget to display loading progress
  final Widget onProgressWidget;

  /// A widget to display when there are no post
  final Widget onEmptyWidget;

  /// Customizes the transition
  final TransitionType transitionType;

  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    return PostFeedCore(
      onProgressWidget: onProgressWidget,
      onErrorWidget: onErrorWidget,
      sectionId: sectionId,
      feedBuilder: (context, feed, idx, onActionTrigger) {
        if (postBuilder != null) {
          return postBuilder!(context, feed[idx], onActionTrigger);
        }
        return PostWidget(
          post: feed[idx],
          onActionTrigger: onActionTrigger,
          sectionId: sectionId,
          onHashtagTap: onHashtagTap,
          onMentionTap: onMentionTap,
          onUserTap: onUserTap,
          postHeaderBuilder: postHeaderBuilder,
          postFooterBuilder: postFooterBuilder,
          postContentBuilder: postContentBuilder,
          onPostTap: onPostTap,
        );
      },
      scrollPhysics: scrollPhysics,
    );
  }
}
