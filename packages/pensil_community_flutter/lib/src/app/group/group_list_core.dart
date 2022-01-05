import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/mixin/index.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/bloc/index.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

class GroupListCore extends GenericGroupListCore {
  const GroupListCore({
    Key? key,
    required SectionTileBuilder sectionTileBuilder,
    required String groupId,
    Widget onErrorWidget = const ErrorStateWidget(),
    Widget onProgressWidget = const ProgressStateWidget(),
    Widget onEmptyWidget =
        const EmptyStateWidget(message: 'No groups to display'),
    ScrollPhysics? scrollPhysics,
  }) : super(
          key: key,
          groupId: groupId,
          sectionTileBuilder: sectionTileBuilder,
          onErrorWidget: onErrorWidget,
          onProgressWidget: onProgressWidget,
          onEmptyWidget: onEmptyWidget,
          scrollPhysics: scrollPhysics,
        );
}

/// [GenericGroupListCore] is a simplified class that allows fetching a list of
/// post while exposing UI builders.
///
/// {@macro flatFeedCore}
/// {@macro genericParameters}
class GenericGroupListCore extends StatefulWidget {
  const GenericGroupListCore({
    Key? key,
    required this.sectionTileBuilder,
    required this.groupId,
    this.onErrorWidget = const ErrorStateWidget(),
    this.onProgressWidget = const ProgressStateWidget(),
    this.onEmptyWidget =
        const EmptyStateWidget(message: 'No groups to display'),
    this.scrollPhysics,
  }) : super(key: key);

  /// A builder that let you build a ListView of EnrichedActivity based Widgets
  final SectionTileBuilder sectionTileBuilder;

  /// An error widget to show when an error occurs
  final Widget onErrorWidget;

  /// A progress widget to show when a request is in progress
  final Widget onProgressWidget;

  /// A widget to show when the feed is empty
  final Widget onEmptyWidget;

  final ScrollPhysics? scrollPhysics;

  final String groupId;

  @override
  _GenericGroupListCoreState createState() => _GenericGroupListCoreState();
}

class _GenericGroupListCoreState extends State<GenericGroupListCore>
    with GroupMixin {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Section>>(
      stream: bloc.getSectionListStream(widget.groupId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return widget.onErrorWidget;
        }
        if (!snapshot.hasData) {
          return widget.onProgressWidget;
        }
        final groups = snapshot.data!;
        if (groups.isEmpty) {
          return widget.onEmptyWidget;
        }
        return ListView.separated(
          physics:
              widget.scrollPhysics ?? const AlwaysScrollableScrollPhysics(),
          itemCount: groups.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, idx) => widget.sectionTileBuilder(
            context,
            groups[idx],
            idx,
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<GroupBloc>('bloc', bloc));
  }
}
