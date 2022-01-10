import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

class PensilCommunityBuilder extends StatefulWidget {
  PensilCommunityBuilder({
    Key? key,
    ErrorBuilder? errorBuilder,
    required this.builder,
    this.initialData,
    this.onProgressWidget = const ProgressStateWidget(),
  }) : super(key: key) {
    _errorBuilder = errorBuilder ??= (context, _) => const ErrorStateWidget();
  }
  final Community? initialData;
  final CommunityBuilder builder;
  late final ErrorBuilder? _errorBuilder;
  final Widget onProgressWidget;

  @override
  State<PensilCommunityBuilder> createState() => _PensilCommunityBuilderState();
}

class _PensilCommunityBuilderState extends State<PensilCommunityBuilder>
    with CommunityMixin {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc.fetchCommunityDetail();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Community?>(
      stream: CommunityProvider.of(context).bloc.communityStream,
      initialData: widget.initialData,
      builder: (BuildContext context, AsyncSnapshot<Community?> snapshot) {
        if (snapshot.hasData) {
          return widget.builder(
            context,
            snapshot.data,
          );
        } else if (snapshot.hasError) {
          return widget._errorBuilder!(
              context, snapshot.error as PensilException);
        }
        return widget.onProgressWidget;
      },
    );
  }
}
