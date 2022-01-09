import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/mixin/provider_mixin.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/bloc/index.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

class PensilSectionFeedBuilder extends StatefulWidget {
  const PensilSectionFeedBuilder({
    Key? key,
    required this.builder,
    this.initialData,
    this.onProgressWidget = const ProgressStateWidget(),
    this.errorBuilder,
  }) : super(key: key);

  final List<Post>? initialData;
  final SectionFeedBuilder builder;
  final ErrorBuilder? errorBuilder;
  final Widget onProgressWidget;

  @override
  State<PensilSectionFeedBuilder> createState() =>
      _PensilSectionFeedBuilderState();
}

class _PensilSectionFeedBuilderState extends State<PensilSectionFeedBuilder>
    with SectionMixin {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.fetchSectionPost();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Post>?>(
      stream: SectionProvider.of(context).bloc.feedStream,
      initialData: widget.initialData,
      builder: (BuildContext context, AsyncSnapshot<List<Post>?> snapshot) {
        if (snapshot.hasData) {
          return widget.builder(
            context,
            snapshot.data,
          );
        } else if (snapshot.hasError) {
          if (widget.errorBuilder != null) {
            return widget.errorBuilder!.call(context, snapshot.error as String);
          }
          return const ErrorStateWidget();
        }
        return widget.onProgressWidget;
      },
    );
  }
}
