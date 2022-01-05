import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/core/bloc/community/community_bloc.dart';

class CommunityProvider extends InheritedWidget {
  const CommunityProvider({
    Key? key,
    required this.bloc,
    required Widget child,
  }) : super(key: key, child: child);

  static CommunityProvider of(BuildContext context) {
    var result =
        context.dependOnInheritedWidgetOfExactType<CommunityProvider>();

    result ??= context.dependOnInheritedWidgetOfExactType<CommunityProvider>();
    assert(result != null, '''No `CommunityProvider` found in context''');
    return result!;
  }

  final CommunityBloc bloc;
  @override
  bool updateShouldNotify(CommunityProvider oldWidget) =>
      bloc != oldWidget.bloc; //

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<CommunityBloc>('bloc', bloc));
  }
}
