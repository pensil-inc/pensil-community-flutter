import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension ListHelper<T> on List<T>? {
  Option<List<T>> get value => isNotNullEmpty! ? some(this!) : none();

  bool? get isNotNullEmpty => this != null && this!.isNotEmpty;

  Widget on({
    required Widget Function() ifNull,
    required Widget Function() ifEmpty,
    required Widget Function() ifValue,
  }) {
    if (this == null) {
      return ifNull();
    } else if (this!.isEmpty) {
      return ifEmpty();
    } else {
      return ifValue();
    }
  }
}

extension StringHelper on String? {
  bool get isNotNullEmpty => this != null && this!.isNotEmpty;

  bool get isNullEmpty => this == null || this!.isEmpty;

  String getOrDefault(String defaultValue) => this ?? defaultValue;

  String get getOrEmpty => this ?? '';

  Option<String> get value => isNotNullEmpty ? some(this!) : none();

  DateTime? get toDateTime => this == null ? null : DateTime.tryParse(this!);

  String? get addTimeEpoch {
    if (this != null) {
      final mess = '$this## ${DateTime.now().microsecondsSinceEpoch}';

      return mess;
    }

    return null;
  }

  String? get trimTimeEpoch {
    if (this != null && this!.contains('##')) {
      // ignore: parameter_assignments
      return this!.split('##')[0];
    }

    return '';
  }
}

extension DateTimeExtension on DateTime? {
  String? format([String pattern = 'MMMM dd, yyyy']) {
    if (this == null) {
      return null;
    }

    return DateFormat(pattern).format(this!);
  }
}

extension OptionHelper<T> on Option<T> {
  T? get valueOrDefault => fold(() => null, (a) => a);
}

extension ObjectHelper<T> on T? {
  Option<T> get value {
    if (this == null) {
      return none();
    }

    return some(this as T);
  }
}
