import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/app/theme/pensil_theme.dart';

// ignore_for_file: cascade_invocations

/// Overrides the default style of [UserTile] and [CommentItem] descendants.
///
/// See also:
///
///  * [UserTileThemeData], which is used to configure this theme.
class UserTileTheme extends InheritedTheme {
  /// Builds a [GifDialogTheme].
  const UserTileTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  /// The configuration of this theme.
  final UserTileThemeData data;

  /// The closest instance of this class that encloses the given context.
  ///
  /// If there is no enclosing [UserTileTheme] widget, then
  /// [PensilThemeData.userTileTheme] is used.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// final theme = UserBarTheme.of(context);
  /// ```
  static UserTileThemeData of(BuildContext context) {
    final userTileTheme =
        context.dependOnInheritedWidgetOfExactType<UserTileTheme>();
    return userTileTheme?.data ?? PensilTheme.of(context).userTileTheme;
  }

  @override
  Widget wrap(BuildContext context, Widget child) =>
      UserTileTheme(data: data, child: child);

  @override
  bool updateShouldNotify(UserTileTheme oldWidget) => data != oldWidget.data;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<UserTileThemeData>('data', data));
  }
}

/// {@template UserTileThemeData}
/// A style that overrides the default appearance of [UserBar] and
/// [CommentItem] widgets when used with [UserTileTheme] or with the overall
/// [PensilTheme]'s [PensilThemeData.userTileTheme].
///
/// See also:
///
/// * [UserTileTheme], the theme which is configured with this class.
/// * [PensilThemeData.userTileTheme], which can be used to override
/// the default style for [UserBar] and [CommentItem] widgets below the overall
/// [PensilTheme].
/// {@endtemplate}
class UserTileThemeData with Diagnosticable {
  /// Builds a [UserTileThemeData].
  const UserTileThemeData({
    this.timestampTextStyle,
    this.usernameTextStyle,
    this.avatarSize,
  });

  /// The text style for the timestamp.
  final TextStyle? timestampTextStyle;

  /// The text style for the username.
  final TextStyle? usernameTextStyle;

  /// The size of the avatar.
  final double? avatarSize;

  /// Creates a copy of this theme, but with the given fields replaced with
  /// the new values.
  UserTileThemeData copyWith({
    TextStyle? timestampTextStyle,
    TextStyle? usernameTextStyle,
    double? avatarSize,
  }) {
    return UserTileThemeData(
      timestampTextStyle: timestampTextStyle ?? this.timestampTextStyle,
      usernameTextStyle: usernameTextStyle ?? this.usernameTextStyle,
      avatarSize: avatarSize ?? this.avatarSize,
    );
  }

  /// Linearly interpolates between two [UserTileThemeData].
  ///
  /// All the properties must be non-null.
  UserTileThemeData lerp(
    UserTileThemeData a,
    UserTileThemeData b,
    double t,
  ) {
    return UserTileThemeData(
      timestampTextStyle:
          TextStyle.lerp(a.timestampTextStyle, b.timestampTextStyle, t),
      usernameTextStyle:
          TextStyle.lerp(a.usernameTextStyle, b.usernameTextStyle, t),
      avatarSize: a.avatarSize,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTileThemeData &&
          runtimeType == other.runtimeType &&
          timestampTextStyle == other.timestampTextStyle &&
          usernameTextStyle == other.usernameTextStyle &&
          avatarSize == other.avatarSize;

  @override
  int get hashCode =>
      timestampTextStyle.hashCode ^
      usernameTextStyle.hashCode ^
      avatarSize.hashCode;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('avatarSize', avatarSize));
    properties.add(DiagnosticsProperty<TextStyle?>(
        'usernameTextStyle', usernameTextStyle));
    properties.add(DiagnosticsProperty<TextStyle?>(
        'timestampTextStyle', timestampTextStyle));
  }
}
