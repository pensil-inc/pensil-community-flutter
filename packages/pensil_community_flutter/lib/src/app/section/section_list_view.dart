import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/section/section_list_core.dart';
import 'package:pensil_community_flutter/src/app/section/section_tile.dart';
import 'package:pensil_community_flutter/src/app/utils/transition_enum.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

/// {@template section_list_page}
/// Display all sections of a [Group] in a listview
/// {@endtemplate}
class PensilSectionListView extends StatelessWidget {
  /// Builds a [PensilSectionListView].
  const PensilSectionListView({
    Key? key,
    required this.groupId,
    this.onSectionTileTap,
    this.sectionTileBuilder,
    this.onProgressWidget = const ProgressStateWidget(),
    this.onErrorWidget = const ErrorStateWidget(),
    this.onEmptyWidget =
        const EmptyStateWidget(message: 'No section to display'),
    this.transitionType = TransitionType.material,
    this.scrollPhysics,
  })  : assert(!(sectionTileBuilder == null && onSectionTileTap == null),
            'sectionTileBuilder or onSectionTileTap must not be null'),
        super(key: key);

  /// A group id to fetch section for
  final String groupId;

  /// {@macro section_tile_builder}
  final SectionTileBuilder? sectionTileBuilder;

  /// A Callback invoked when a [SectionTile] is tapped
  /// This is will only be invoked when [SectionTileBuilder] is not null
  final OnSectionTileTap? onSectionTileTap;

  /// A widget to display when there is an error in the request
  final Widget onErrorWidget;

  /// A widget to display loading progress
  final Widget onProgressWidget;

  /// A widget to display when there are no section
  final Widget onEmptyWidget;

  /// Customises the transition
  final TransitionType transitionType;

  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    return SectionListViewCore(
      groupId: groupId,
      onProgressWidget: onProgressWidget,
      onErrorWidget: onErrorWidget,
      onSectionTileTap: onSectionTileTap,
      sectionTileBuilder: (context, section, idx) {
        if (sectionTileBuilder != null) {
          return sectionTileBuilder!(context, section, idx);
        }
        return SectionTile(
            section: section, onSectionTileTap: onSectionTileTap!);
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
