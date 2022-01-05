import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/app/theme/gallery_header_theme.dart';
import 'package:pensil_community_flutter/src/app/theme/markdown_theme.dart';
import 'package:pensil_community_flutter/src/app/theme/user_tile_theme.dart';

/// Applies a [PensilThemeData] to descendent Stream Feed widgets.
class PensilTheme extends InheritedWidget {
  /// Builds a [PensilTheme].
  const PensilTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  /// The [PensilThemeData] styling for this theme.
  // ignore: diagnostic_describe_all_properties
  final PensilThemeData data;

  @override
  bool updateShouldNotify(PensilTheme oldWidget) => data != oldWidget.data;

  /// Retrieves the [PensilThemeData] from the closest ancestor
  /// [PensilTheme] widget.
  static PensilThemeData of(BuildContext context) {
    final streamFeedTheme =
        context.dependOnInheritedWidgetOfExactType<PensilTheme>();

    assert(
      streamFeedTheme != null,
      'You must have a StreamFeedTheme widget at the top of your widget tree',
    );

    return streamFeedTheme!.data;
  }
}

/// Defines the configuration of the overall visual [PensilTheme] for a
/// particular widget subtree.
class PensilThemeData with Diagnosticable {
  /// Builds a [PensilThemeData] with default values, if none are given.
  factory PensilThemeData({
    Brightness? brightness,
    IconThemeData? primaryIconTheme,
    UserTileThemeData? userTileTheme,
    GalleryHeaderThemeData? galleryHeaderTheme,
    MarkdownThemeData? markdownTheme,
  }) {
    // Use the given brightness, or a default
    final _brightness = brightness ?? Brightness.light;
    // Determine dark or light
    final isDark = _brightness == Brightness.dark;

    // Use the given primaryIconTheme or a default.
    primaryIconTheme ??= IconThemeData(
      color: isDark ? const Color(0xff959595) : const Color(0xff757575),
    );

    // Use the given userTileTheme or a default.
    userTileTheme ??= const UserTileThemeData(
      usernameTextStyle: TextStyle(
        color: Color(0xff333333),
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ),
      timestampTextStyle: TextStyle(
        color: Color(0xff7a8287),
        fontWeight: FontWeight.w400,
        height: 1.5,
        fontSize: 14,
      ),
      avatarSize: 46,
    );

    // Use the given galleryHeaderTheme or a default.
    galleryHeaderTheme ??= const GalleryHeaderThemeData(
      backgroundColor: Colors.black,
      closeButtonColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
    );

    markdownTheme ??= const MarkdownThemeData(
      h1: TextStyle(
        fontSize: 24,
        height: 1.15,
        fontWeight: FontWeight.w300,
      ),
      h2: TextStyle(
        fontSize: 22,
        height: 1.15,
        fontWeight: FontWeight.normal,
      ),
      h3: TextStyle(
        fontSize: 20,
        height: 1.15,
        fontWeight: FontWeight.w500,
      ),
      h4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      h5: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      h6: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      p: TextStyle(fontSize: 14),
    );

    return PensilThemeData.raw(
      brightness: _brightness,
      primaryIconTheme: primaryIconTheme,
      userTileTheme: userTileTheme,
      galleryHeaderTheme: galleryHeaderTheme,
      markdownTheme: markdownTheme,
    );
  }

  /// A default light theme.
  factory PensilThemeData.light() =>
      PensilThemeData(brightness: Brightness.light);

  /// A default dark theme.
  factory PensilThemeData.dark() =>
      PensilThemeData(brightness: Brightness.dark);

  /// Raw [PensilThemeData] initialization.
  const PensilThemeData.raw({
    required this.brightness,
    required this.primaryIconTheme,
    required this.userTileTheme,
    required this.galleryHeaderTheme,
    required this.markdownTheme,
  });

  /// The [Brightness] of this theme.
  final Brightness brightness;

  /// The primary icon theme
  final IconThemeData primaryIconTheme;

  /// {@macro userBarThemeData}
  final UserTileThemeData userTileTheme;

  /// {@macro galleryHeaderThemeData}
  final GalleryHeaderThemeData galleryHeaderTheme;

  /// {@macro markdownThemeData}
  final MarkdownThemeData markdownTheme;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(EnumProperty<Brightness>('brightness', brightness))
      ..add(DiagnosticsProperty<IconThemeData>(
          'primaryIconTheme', primaryIconTheme))
      ..add(DiagnosticsProperty<UserTileThemeData>(
          'userTileTheme', userTileTheme))
      ..add(DiagnosticsProperty<GalleryHeaderThemeData>(
          'galleryHeaderTheme', galleryHeaderTheme))
      ..add(DiagnosticsProperty<MarkdownThemeData>(
          'markdownTheme', markdownTheme));
  }
}
