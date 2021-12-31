// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

enum GroupType {
  @JsonValue('open')
  Open,
  @JsonValue('closed-free')
  Free,
  @JsonValue('closed-paid')
  Paid,
  @JsonValue('')
  NotDefine,
}

extension GroupTypeHelpr on GroupType {
  T? when<T>({
    T Function()? open,
    T Function()? paid,
    T Function()? free,
  }) {
    switch (this) {
      case GroupType.Open:
        if (open != null) {
          return open.call();
        }
        break;
      case GroupType.Free:
        if (free != null) {
          return free.call();
        }
        break;
      case GroupType.Paid:
        if (paid != null) {
          return paid.call();
        }
        break;
      default:
        return null;
    }
    return null;
  }

  T mayBeWhen<T>(
    T Function() elseMaybe, {
    T Function()? open,
    T Function()? paid,
    T Function()? free,
  }) {
    switch (this) {
      case GroupType.Open:
        if (open != null) {
          return open.call();
        } else {
          return elseMaybe();
        }

      case GroupType.Free:
        if (free != null) {
          return free.call();
        } else {
          return elseMaybe();
        }

      case GroupType.Paid:
        if (paid != null) {
          return paid.call();
        } else {
          return elseMaybe();
        }

      default:
        return elseMaybe();
    }
  }
}
