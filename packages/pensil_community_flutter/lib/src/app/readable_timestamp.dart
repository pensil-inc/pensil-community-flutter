import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

/// A human readable date.
class HumanReadableTimestamp extends StatelessWidget {
  /// Builds a [HumanReadableTimestamp].
  const HumanReadableTimestamp(
      {Key? key, required this.timestamp, this.textStyle})
      : super(key: key);

  /// The timestamp to display.
  final DateTime timestamp;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      timeago.format(timestamp),
      style: textStyle ?? Theme.of(context).textTheme.caption,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<DateTime>('timestamp', timestamp));
  }
}
