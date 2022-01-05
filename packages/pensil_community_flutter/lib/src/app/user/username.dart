import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/theme/theme.dart';

// ignore_for_file: cascade_invocations

/// TODO: document me
class Username extends StatelessWidget {
  /// Builds a [Username].
  const Username({
    Key? key,
    this.user,
  }) : super(key: key);

  /// The user to show a username for
  final Actor? user;

  /// Username
  String? get username => user!.name; //user?.data?[nameJsonKey] as String?;

  @override
  Widget build(BuildContext context) {
    return Text(
      username ?? 'anonymous',
      style: UserTileTheme.of(context).usernameTextStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('username', username));
    properties.add(DiagnosticsProperty<Actor?>('user', user));
  }
}
