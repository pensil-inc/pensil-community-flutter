import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class PensilCommunityApp extends StatelessWidget {
  PensilCommunityApp({
    Key? key,
    required this.bloc,
    required this.child,
    PensilThemeData? themeData,
  })  : _themeData = themeData ?? PensilThemeData.light(),
        super(key: key);

  final PensilBloc bloc;
  final Widget child;
  final PensilThemeData _themeData;

  @override
  Widget build(BuildContext context) {
    return PensilProvider(
      bloc: bloc,
      child: PensilTheme(
        data: _themeData,
        child: child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<PensilBloc>('bloc', bloc));
  }
}
