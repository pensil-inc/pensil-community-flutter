// ignore_for_file: constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

enum PostLevel {
  @JsonValue('admin')
  Admin,
  @JsonValue('anyone')
  Anyone,
  @JsonValue('')
  NotDefine,
}

extension PostLevelHelper on PostLevel {
  T? when<T>({
    T Function()? admin,
    T Function()? anyone,
    T Function()? elseMaybe,
  }) {
    switch (this) {
      case PostLevel.Admin:
        if (admin != null) {
          return admin.call();
        }
        break;
      case PostLevel.Anyone:
        if (anyone != null) {
          return anyone.call();
        }
        break;
      default:
    }
    if (elseMaybe != null) return elseMaybe.call();

    return null;
  }

  T mayBeWhen<T>(
    T Function() elseMaybe, {
    T Function()? admin,
    T Function()? anyone,
  }) {
    switch (this) {
      case PostLevel.Admin:
        if (admin != null) {
          return admin.call();
        } else {
          return elseMaybe();
        }
      case PostLevel.Anyone:
        if (anyone != null) {
          return anyone.call();
        } else {
          return elseMaybe();
        }
      default:
        return elseMaybe();
    }
  }
}
