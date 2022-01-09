import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';
import 'package:pensil_community_flutter/src/app/utils/typedef.dart';
import 'package:pensil_community_flutter/src/app/widget/user/avatar.dart';
import 'package:pensil_community_flutter/src/app/widget/user/username.dart';
// ignore_for_file: cascade_invocations

/// Displays the user's name, profile picture, and a timestamp at which the
/// user posted the message.
class UserTile extends StatelessWidget {
  /// Builds a [UserTile].
  const UserTile({
    Key? key,
    required this.user,
    this.onUserTap,
    this.trailing,
    this.afterUsername,
    this.subtitle,
    this.showSubtitle = true,
    this.showReactedBy = false,
  }) : super(key: key);

  /// The UserModel whose bar is being displayed.
  final Actor user;

  ///{@macro user_callback}
  final OnUserTap? onUserTap;

  /// The reaction icon to display next to the user's name (if any)
  final Widget? trailing;

  /// The widget to display after the user's name.
  final Widget? afterUsername;

  /// The subtitle of the user bar if any
  final Widget? subtitle;

  /// Whether or not to show the subtitle.
  final bool showSubtitle;

  /// Whether to show the "reacted by" widget or not.
  ///
  /// Defaults to `false`.
  final bool showReactedBy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Avatar(
            user: user,
            onUserTap: onUserTap,
            size: UserTileTheme.of(context).avatarSize,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Username(user: user),
                    if (afterUsername != null) afterUsername!,
                  ],
                ),
                const SizedBox(width: 4),
                if (showSubtitle && subtitle != null) subtitle!
              ],
            ),
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('showSubtitle', showSubtitle));
    properties.add(ObjectFlagProperty<OnUserTap?>.has('onUserTap', onUserTap));
    properties.add(DiagnosticsProperty<Actor>('user', user));
    properties.add(DiagnosticsProperty<bool>('showReactedBy', showReactedBy));
  }
}
