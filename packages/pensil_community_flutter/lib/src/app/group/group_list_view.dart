import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/group/group_list_core.dart';
import 'package:pensil_community_flutter/src/app/group/group_tile.dart';
import 'package:pensil_community_flutter/src/app/section/section_tile.dart';
import 'package:pensil_community_flutter/src/app/utils/transition_enum.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

/// {@template section_list_page}
/// Display all sections of a [Group] in a listview
/// {@endtemplate}
class PensilGroupListView extends StatelessWidget {
  /// Builds a [PensilGroupListView].
  PensilGroupListView({
    Key? key,
    required this.communityId,
    this.onGroupTileTap,
    this.groupTileBuilder,
    this.onProgressWidget = const ProgressStateWidget(),
    ErrorBuilder? errorBuilder,
    this.onEmptyWidget =
        const EmptyStateWidget(message: 'No section to display'),
    this.transitionType = TransitionType.material,
    this.scrollPhysics,
  })  : assert(!(groupTileBuilder == null && onGroupTileTap == null),
            'groupTileBuilder or onGroupTileTap must not be null'),
        super(key: key) {
    _errorBuilder = errorBuilder ??= (context, _) => const ErrorStateWidget();
  }

  /// A group id to fetch section for
  final String communityId;

  /// {@macro group_tile_builder}
  final GroupTileBuilder? groupTileBuilder;

  /// A Callback invoked when a [SectionTile] is tapped
  /// This is will only be invoked when [SectionTileBuilder] is not null
  final OnGroupTileTap? onGroupTileTap;

  /// A widget to display when there is an error in the request
  late final ErrorBuilder? _errorBuilder;

  /// A widget to display loading progress
  final Widget onProgressWidget;

  /// A widget to display when there are no section
  final Widget onEmptyWidget;

  /// Customises the transition
  final TransitionType transitionType;

  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    return GroupListViewCore(
      communityId: communityId,
      onProgressWidget: onProgressWidget,
      errorWidgetBuilder: _errorBuilder,
      onGroupTileTap: onGroupTileTap,
      groupTileBuilder: (context, group, idx) {
        if (groupTileBuilder != null) {
          return groupTileBuilder!(context, group, idx);
        }
        return GroupTile(group: group, onGroupTileTap: onGroupTileTap);
      },
      scrollPhysics: scrollPhysics,
    );
  }

  // ignore: unused_element
  void _pageRouteBuilder({
    required BuildContext context,
    required TransitionType transitionType,
    required Section section,
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
