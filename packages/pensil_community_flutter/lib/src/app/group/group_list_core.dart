import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/mixin/index.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/bloc/index.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

class GroupListViewCore extends GenericGroupListCore {
  const GroupListViewCore({
    Key? key,
    required GroupTileBuilder groupTileBuilder,
    required final OnGroupTileTap? onGroupTileTap,
    required String communityId,
    final ErrorBuilder? errorWidgetBuilder,
    Widget onProgressWidget = const ProgressStateWidget(),
    Widget onEmptyWidget =
        const EmptyStateWidget(message: 'No groups to display'),
    ScrollPhysics? scrollPhysics,
  }) : super(
            key: key,
            communityId: communityId,
            groupTileBuilder: groupTileBuilder,
            onErrorWidget: errorWidgetBuilder,
            onProgressWidget: onProgressWidget,
            onEmptyWidget: onEmptyWidget,
            scrollPhysics: scrollPhysics,
            onGroupTileTap: onGroupTileTap);
}

/// [GenericGroupListCore] is a simplified class that allows fetching a list of
/// post while exposing UI builders.
///
/// {@macro flatFeedCore}
/// {@macro genericParameters}
class GenericGroupListCore extends StatefulWidget {
  const GenericGroupListCore({
    Key? key,
    required this.groupTileBuilder,
    required this.communityId,
    required this.onGroupTileTap,
    this.scrollPhysics,
    this.onErrorWidget,
    this.onProgressWidget = const ProgressStateWidget(),
    this.onEmptyWidget =
        const EmptyStateWidget(message: 'No groups to display'),
  }) : super(key: key);

  final ErrorBuilder? onErrorWidget;

  /// A builder that let you build a ListView of EnrichedActivity based Widgets
  final GroupTileBuilder groupTileBuilder;

  final OnGroupTileTap? onGroupTileTap;

  /// An error widget to show when an error occurs
  // final Widget onErrorWidget;

  /// A progress widget to show when a request is in progress
  final Widget onProgressWidget;

  /// A widget to show when the feed is empty
  final Widget onEmptyWidget;

  final ScrollPhysics? scrollPhysics;

  final String communityId;

  @override
  _GenericGroupListCoreState createState() => _GenericGroupListCoreState();
}

class _GenericGroupListCoreState extends State<GenericGroupListCore>
    with CommunityMixin {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (bloc.groupList == null) {
      bloc.fetchGroupList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Group>>(
      stream: bloc.getGroupListStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return widget.onErrorWidget!(context, snapshot.error as String);
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
          itemBuilder: (context, idx) => widget.groupTileBuilder(
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
    properties.add(DiagnosticsProperty<CommunityBloc>('bloc', bloc));
  }
}
