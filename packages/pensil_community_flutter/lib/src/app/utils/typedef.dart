/* BUILDERS */
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/domain/post_action.dart';

/// {@template post_builder}
/// A builder that allows building a ListView of post based Widgets
/// {@endtemplate}
typedef PostBuilder = Widget Function(BuildContext context,
    List<Post> activities, int idx, OnActionTrigger onActionTrigger);

/// {@template section_tile_builder}
/// A builder that allows building a ListView of post based Widgets
/// {@endtemplate}
typedef SectionTileBuilder = Widget Function(
    BuildContext context, Section section, int idx);

/// {@template group_tile_Builder}
/// A builder that allows building a ListView of post based Widgets
/// {@endtemplate}
typedef GroupTileBuilder = Widget Function(
    BuildContext context, Group section, int idx);

/// {@template error_builder}
/// A builder that allows building widgets based on the error
/// {@endtemplate}
typedef ErrorBuilder = Widget Function(BuildContext context, String error);

/// {@template community_builder}
/// A builder that allows building widgets based on the error
/// {@endtemplate}
typedef CommunityBuilder = Widget Function(
    BuildContext context, Community? community);

/// {@template section_feed_builder}
/// A builder that allows building widgets based on the error
/// {@endtemplate}
typedef SectionFeedBuilder = Widget Function(
    BuildContext context, List<Post>? community);

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

///{@template section_tile_callback}
/// A callback to handle section tile taps
/// {@endtemplate}
typedef OnSectionTileTap = void Function(Section? section);

///{@template group_tile_callback}
/// A callback to handle group tile taps
/// {@endtemplate}
typedef OnGroupTileTap = void Function(Group? section);
