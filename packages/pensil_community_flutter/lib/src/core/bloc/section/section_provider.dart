import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/core/bloc/section/section_bloc.dart';

class SectionProvider extends InheritedWidget {
  const SectionProvider({
    Key? key,
    required this.bloc,
    required Widget child,
  }) : super(key: key, child: child);

  static SectionProvider of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<SectionProvider>();

    result ??= context.dependOnInheritedWidgetOfExactType<SectionProvider>();
    assert(result != null, '''No `SectionProvider` found in context''');
    return result!;
  }

  final SectionBloc bloc;
  @override
  bool updateShouldNotify(SectionProvider oldWidget) =>
      bloc != oldWidget.bloc; //

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SectionBloc>('bloc', bloc));
  }
}
