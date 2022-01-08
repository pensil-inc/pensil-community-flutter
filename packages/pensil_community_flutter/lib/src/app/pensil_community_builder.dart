import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/core/bloc/community/community_provider.dart';
import 'package:pensil_community_flutter/src/core/state/state.dart';

class PensilCommunityBuilder extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return StreamBuilder<Community?>(
      stream: CommunityProvider.of(context).bloc.communityStream,
      initialData: initialData,
      builder: (BuildContext context, AsyncSnapshot<Community?> snapshot) {
        if (snapshot.hasData) {
          return builder(
            context,
            snapshot.data,
          );
        } else if (snapshot.hasError) {
          return _errorBuilder!(context, snapshot.error as String);
        }
        return onProgressWidget;
      },
    );
  }
}
