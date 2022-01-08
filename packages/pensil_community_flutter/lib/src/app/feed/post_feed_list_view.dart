import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/feed/post/post_widget.dart';
import 'package:pensil_community_flutter/src/app/feed/post_feed_core.dart';
import 'package:pensil_community_flutter/src/app/utils/transition_enum.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

/// {@template post_feed_list_page}
/// Display a list of post.
///
/// Best used as the main page of an app.
/// {@endtemplate}
class PensilPostFeedListView extends StatelessWidget {
  /// Builds a [PensilPostFeedListView].
  const PensilPostFeedListView({
    Key? key,
    this.onHashtagTap,
    this.onMentionTap,
    this.onUserTap,
    this.postFooterBuilder,
    this.postContentBuilder,
    this.postHeaderBuilder,
    required this.sectionId,
    this.onProgressWidget = const ProgressStateWidget(),
    this.onErrorWidget = const ErrorStateWidget(),
    this.onEmptyWidget = const EmptyStateWidget(message: 'No post to display'),
    this.onPostTap,
    this.transitionType =
        TransitionType.material, //TODO: move this to core or theme
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
  final PostFooterBuilder? postFooterBuilder;

  /// Builds the post content
  final PostContentBuilder? postContentBuilder;

  /// Builds the post header
  final PostHeaderBuilder? postHeaderBuilder;

  /// {@macro activity_callback}
  final OnPostTap? onPostTap;

  /// A widget to display when there is an error in the request
  final Widget onErrorWidget;

  /// A widget to display loading progress
  final Widget onProgressWidget;

  /// A widget to display when there are no post
  final Widget onEmptyWidget;

  /// Customises the transition
  final TransitionType transitionType;

  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    return PostFeedCore(
      onProgressWidget: onProgressWidget,
      onErrorWidget: onErrorWidget,
      sectionId: sectionId,
      feedBuilder: (context, post, idx, onActionTrigger) {
        return PostWidget(
          post: post[idx],
          onActionTrigger: onActionTrigger,
          sectionId: sectionId,
          onHashtagTap: onHashtagTap,
          onMentionTap: onMentionTap,
          onUserTap: onUserTap,
          postHeaderBuilder: postHeaderBuilder,
          activityFooterBuilder: postFooterBuilder,
          postContentBuilder: postContentBuilder,
          onPostTap: (context, post) {},
        );
      },
      scrollPhysics: scrollPhysics,
    );
  }

  // ignore: unused_element
  void _pageRouteBuilder({
    required BuildContext context,
    required TransitionType transitionType,
    required Post post,
    required Widget page,
    required NavigatorState currentNavigator,
  }) {
    switch (transitionType) {
      case TransitionType.material:
        currentNavigator.push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => page,
          ),
        );
        break;
      case TransitionType.cupertino:
        currentNavigator.push(
          CupertinoPageRoute<void>(
            builder: (BuildContext context) => page,
          ),
        );
        break;
      default:
        currentNavigator.push(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => page,
            transitionsBuilder: (
              _,
              animation,
              secondaryAnimation,
              child,
            ) =>
                SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            ),
          ),
        );
    }
  }
}
