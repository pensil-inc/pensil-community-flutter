import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/widget/lazy_load_scroll_view.dart';
import 'package:pensil_community_flutter/src/app/widget/loading_more_widget.dart';
import 'package:pensil_community_flutter/src/core/bloc/section/section_bloc.dart';
import 'package:pensil_community_flutter/src/core/bloc/section/section_provider.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';

class PostFeedCore extends GenericPostFeedCore {
  const PostFeedCore({
    Key? key,
    required PostBuilder feedBuilder,
    Widget onErrorWidget = const ErrorStateWidget(),
    Widget onProgressWidget = const ProgressStateWidget(),
    Widget onEmptyWidget =
        const EmptyStateWidget(message: 'No posts to display'),
    required String sectionId,
    ScrollPhysics? scrollPhysics,
  }) : super(
          key: key,
          feedBuilder: feedBuilder,
          onErrorWidget: onErrorWidget,
          onProgressWidget: onProgressWidget,
          onEmptyWidget: onEmptyWidget,
          sectionId: sectionId,
          scrollPhysics: scrollPhysics,
        );
}

/// [GenericPostFeedCore] is a simplified class that allows fetching a list of
/// post while exposing UI builders.
///
class GenericPostFeedCore extends StatefulWidget {
  const GenericPostFeedCore({
    Key? key,
    required this.sectionId,
    required this.feedBuilder,
    this.onErrorWidget = const ErrorStateWidget(),
    this.onProgressWidget = const ProgressStateWidget(),
    this.onEmptyWidget = const EmptyStateWidget(message: 'No posts to display'),
    this.scrollPhysics,
  }) : super(key: key);

  /// A builder that let you build a ListView of EnrichedActivity based Widgets
  final PostBuilder feedBuilder;

  /// An error widget to show when an error occurs
  final Widget onErrorWidget;

  /// A progress widget to show when a request is in progress
  final Widget onProgressWidget;

  /// A widget to show when the feed is empty
  final Widget onEmptyWidget;

  /// The feed group to use for the request
  final String sectionId;

  final ScrollPhysics? scrollPhysics;

  @override
  _GenericPostFeedCoreState createState() => _GenericPostFeedCoreState();
}

class _GenericPostFeedCoreState extends State<GenericPostFeedCore> {
  late SectionBloc bloc;

  /// Fetches initial reactions and updates the widget
  Future<void> loadData() async {
    // bloc.queryEnrichedfeed(
    //     sectionId: widget.sectionId,
    //     limit: widget.limit,
    //     offset: widget.offset,
    //     session: widget.session,
    //     ranking: widget.ranking,
    //     userId: widget.userId,
    //   );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = SectionProvider.of(context).bloc;
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Post>>(
      stream: bloc.getPostListStream(widget.sectionId),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return widget.onErrorWidget;
        }
        if (!snapshot.hasData) {
          return widget.onProgressWidget;
        }
        final feed = snapshot.data!;
        if (feed.isEmpty) {
          return widget.onEmptyWidget;
        }
        return LazyLoadScrollView(
          onEndOfPage: () async {
            await bloc.loadMoreSectionPost();
          },
          scrollOffset: 100,
          child: RefreshIndicator(
            onRefresh: () async {},
            child: ListView.separated(
              physics:
                  widget.scrollPhysics ?? const AlwaysScrollableScrollPhysics(),
              itemCount: feed.length + 1,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, idx) {
                if (idx == feed.length) {
                  return LoadingMore(
                    strokeWidth: 2,
                    size: 25,
                    loading: bloc.isLoadingmore.getStream,
                  );
                }
                return widget.feedBuilder(
                  context,
                  feed,
                  idx,
                  bloc.onPostAction,
                );
              },
            ),
          ),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SectionBloc>('bloc', bloc));
  }
}
