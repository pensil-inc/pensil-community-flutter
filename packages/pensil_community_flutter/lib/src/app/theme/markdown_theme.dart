import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/app/theme/pensil_theme.dart';

// ignore_for_file: cascade_invocations

/// Overrides the default style of [MarkdownViewer] with the given [style].
///
/// See also:
///
///  * [MarkdownThemeData], which is used to configure this theme.
class MarkdownTheme extends InheritedTheme {
  /// Builds a [GifDialogTheme].
  const MarkdownTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  /// The configuration of this theme.
  final MarkdownThemeData data;

  /// The closest instance of this class that encloses the given context.
  ///
  /// If there is no enclosing [MarkdownTheme] widget, then
  /// [PensilThemeData.markdownTheme] is used.
  ///
  /// Typical usage is as follows:
  ///
  /// ```dart
  /// final theme = UserBarTheme.of(context);
  /// ```
  static MarkdownThemeData of(BuildContext context) {
    final markdownTheme =
        context.dependOnInheritedWidgetOfExactType<MarkdownTheme>();
    return markdownTheme?.data ?? PensilTheme.of(context).markdownTheme;
  }

  @override
  Widget wrap(BuildContext context, Widget child) =>
      MarkdownTheme(data: data, child: child);

  @override
  bool updateShouldNotify(MarkdownTheme oldWidget) => data != oldWidget.data;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<MarkdownThemeData>('data', data));
  }
}

/// {@template MarkdownThemeData}
/// A style that overrides the default appearance of [MarkdownViewer] and
/// [MarkdownViewer] widgets when used with [MarkdownTheme] or with the overall
/// [PensilTheme]'s [PensilThemeData.markdownTheme].
///
/// See also:
///
/// * [MarkdownTheme], the theme which is configured with this class.
/// * [PensilThemeData.markdownTheme], which can be used to override
/// the default style for [MarkdownViewer] widgets below the overall
/// [PensilTheme].
/// {@endtemplate}
class MarkdownThemeData with Diagnosticable {
  /// Builds a [MarkdownThemeData].
  const MarkdownThemeData(
      {this.h1, this.h2, this.h3, this.h4, this.h5, this.h6, this.a, this.p});

  /// The text style for the heading1.
  final TextStyle? h1;

  /// The text style for the heading2.
  final TextStyle? h2;

  /// The text style for the heading3.
  final TextStyle? h3;

  /// The text style for the heading4.
  final TextStyle? h4;

  /// The text style for the heading5.
  final TextStyle? h5;

  /// The text style for the heading6.
  final TextStyle? h6;

  /// The text style for the paragraph.
  final TextStyle? p;

  /// The text style for the anchor.
  final TextStyle? a;

  /// Creates a copy of this theme, but with the given fields replaced with
  /// the new values.
  MarkdownThemeData copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? h6,
    TextStyle? p,
    TextStyle? a,
  }) {
    return MarkdownThemeData(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      h6: h6 ?? this.h6,
      p: p ?? this.p,
      a: a ?? this.a,
    );
  }

  /// Linearly interpolates between two [MarkdownThemeData].
  ///
  /// All the properties must be non-null.
  MarkdownThemeData lerp(
    MarkdownThemeData a,
    MarkdownThemeData b,
    double t,
  ) {
    return MarkdownThemeData(
      h1: TextStyle.lerp(a.h1, b.h1, t),
      p: TextStyle.lerp(a.p, b.p, t),
      a: a.a,
      h2: TextStyle.lerp(a.h2, b.h2, t),
      h3: TextStyle.lerp(a.h3, b.h3, t),
      h4: TextStyle.lerp(a.h4, b.h4, t),
      h5: TextStyle.lerp(a.h5, b.h5, t),
      h6: TextStyle.lerp(a.h6, b.h6, t),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MarkdownThemeData &&
          runtimeType == other.runtimeType &&
          h1 == other.h1 &&
          h2 == other.h2 &&
          h3 == other.h3 &&
          h4 == other.h4 &&
          h5 == other.h5 &&
          h6 == other.h6 &&
          p == other.p &&
          a == other.a;

  @override
  int get hashCode =>
      h1.hashCode ^
      p.hashCode ^
      a.hashCode ^
      h2.hashCode ^
      h3.hashCode ^
      h4.hashCode ^
      h5.hashCode ^
      h6.hashCode;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextStyle?>('a', a));
    properties.add(DiagnosticsProperty<TextStyle?>('p', p));
    properties.add(DiagnosticsProperty<TextStyle?>('h1', h1));
    properties.add(DiagnosticsProperty<TextStyle?>('h2', h2));
    properties.add(DiagnosticsProperty<TextStyle?>('h3', h3));
    properties.add(DiagnosticsProperty<TextStyle?>('h4', h4));
    properties.add(DiagnosticsProperty<TextStyle?>('h5', h5));
    properties.add(DiagnosticsProperty<TextStyle?>('h6', h6));
  }
}
