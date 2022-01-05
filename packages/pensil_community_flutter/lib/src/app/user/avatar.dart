import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/app/cache_image.dart';
import 'package:pensil_community_flutter/src/app/typedef.dart';
// ignore_for_file: cascade_invocations

/// {@template avatar}
/// An avatar for the user.
/// {@endtemplate}
class Avatar extends StatelessWidget {
  /// Builds an [Avatar].
  const Avatar({
    Key? key,
    this.user,
    this.jsonKey = 'profile_image',
    this.size = 46,
    this.onUserTap,
  }) : super(key: key);

  /// The UserModel whose avatar we are displaying.
  final Actor? user;

  /// The size of the avatar.
  final double? size;

  ///{@macro user_callback}
  final OnUserTap? onUserTap;

  /// A jsonKey for overriding the profile url of [UserModel.data]
  final String jsonKey;

  @override
  Widget build(BuildContext context) {
    final profileUrl = user!.picture; //user?.data?[jsonKey];
    return InkWell(
      onTap: () {
        // onUserTap?.call(user);
      },
      child: profileUrl != null
          ? SizedBox(
              height: size,
              child: ClipOval(
                child: CacheImage(
                  path: profileUrl,
                  fit: BoxFit.cover,
                ),
              ),
            )
          : ClipOval(
              child: CircleAvatar(
                radius: size! / 2,
              ),
            ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Actor?>('user', user));
    properties.add(DoubleProperty('size', size));
    properties.add(ObjectFlagProperty<OnUserTap?>.has('onUserTap', onUserTap));
    properties.add(StringProperty('jsonKey', jsonKey));
  }
}
