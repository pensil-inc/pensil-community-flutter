import 'package:flutter/material.dart';

class BoxDecorations {
  static BoxDecoration outline(context, {double width = 2}) => BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Theme.of(context).dividerColor, width: width),
      );
  static BoxDecoration outlineBorder(context,
          {double width = 2, Color? color}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
            color: color ?? Theme.of(context).dividerColor, width: width),
      );
  static BoxDecoration outlinePrimary(context, {double thickness = 1}) =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border:
            Border.all(color: Theme.of(context).primaryColor, width: thickness),
      );

  static BoxDecoration outlineSucess(context) => BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.green, width: 1),
      );

  static BoxDecoration outlineError(context) => BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Theme.of(context).errorColor, width: 2),
      );

  static BoxDecoration decoration(BuildContext context,
      {Offset offset = const Offset(4, 4),
      double blurRadius = 10,
      double spreadRadius = 0.0}) {
    bool isDarkMode = false; // context.isDarkMode;
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Theme.of(context).colorScheme.onPrimary,
      boxShadow: <BoxShadow>[
        BoxShadow(
          spreadRadius: isDarkMode ? 0 : spreadRadius,
          color: const Color(0xffeaeaea),
          blurRadius: isDarkMode ? 0 : blurRadius,
          offset: offset,
        )
      ],
    );
  }
}
