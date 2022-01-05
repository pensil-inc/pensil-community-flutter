/* BUILDERS */
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/domain/post_action.dart';

/// {@template enrichedFeedBuilder}
/// A builder that allows building a ListView of post based Widgets
/// {@endtemplate}
typedef FeedBuilder = Widget Function(BuildContext context,
    List<Post> activities, int idx, OnActionTrigger onActionTrigger);

///{@template mention_callback}
/// A callback to handle mention taps
/// {@endtemplate}
typedef OnMentionTap = void Function(String? mention);

///{@template hashtag_callback}
/// A callback to handle hashtag taps
/// {@endtemplate}
typedef OnHashtagTap = void Function(String? hashtag);

///{@template user_callback}
/// A callback to handle user taps
/// {@endtemplate}
typedef OnUserTap = void Function(UserModel? user);

///{@template activity_callback}
/// A callback to handle activity taps
/// {@endtemplate}
typedef OnPostTap = void Function(BuildContext context, Post activity);

///{@template activity_footer_builder}
/// A builder to build the footer of an activity
/// {@endtemplate}
typedef PostFooterBuilder = Widget Function(
    BuildContext context, Post activity);

///{@template activity_content_builder}
/// A builder to build the content of an activity
/// {@endtemplate}
typedef PostContentBuilder = Widget Function(
    BuildContext context, Post activity);

/// {@template activity_header_builder}
/// A builder to build the header of an activity
/// {@endtemplate}
typedef PostHeaderBuilder = Widget Function(
    BuildContext context, Post activity);

/// {@template post_action_callback}
/// A callback to handle post actions
/// {@endtemplate}
typedef OnActionTrigger = void Function(PostAction action);
