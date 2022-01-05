import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/core/bloc/pensil/pensil_bloc.dart';

class PensilProvider extends InheritedWidget {
  const PensilProvider({
    Key? key,
    required this.bloc,
    required Widget child,
  }) : super(key: key, child: child);

  static PensilProvider of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<PensilProvider>();

    result ??= context.dependOnInheritedWidgetOfExactType<PensilProvider>();
    assert(result != null, '''No `PensilProvider` found in context''');
    return result!;
  }

  final PensilBloc bloc;
  @override
  bool updateShouldNotify(PensilProvider oldWidget) =>
      bloc != oldWidget.bloc; //

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PensilBloc>('bloc', bloc));
  }
}
