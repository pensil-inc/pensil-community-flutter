// ignore_for_file: constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

enum Role {
  @JsonValue('admin')
  Admin,
  @JsonValue('user')
  User,
  @JsonValue('moderator')
  Moderator,
  @JsonValue('')
  NotDefine,
}

extension GroupMemberRoleEnumHelper on Role {
  T? when<T>({
    T Function()? admin,
    T Function()? user,
    T Function()? moderator,
    T Function()? notDefine,
  }) {
    switch (this) {
      case Role.Admin:
        if (admin != null) {
          return admin.call();
        }
        break;
      case Role.User:
        if (user != null) {
          return user.call();
        }
        break;
      case Role.Moderator:
        if (moderator != null) {
          return moderator.call();
        }
        break;
      case Role.NotDefine:
        if (notDefine != null) {
          return notDefine.call();
        }
        break;
      default:
    }
    return null;
  }

  T mayBeWhen<T>({
    required T Function() elseMaybe,
    T Function()? admin,
    T Function()? user,
    T Function()? moderator,
    T Function()? notDefine,
  }) {
    switch (this) {
      case Role.Admin:
        if (admin != null) {
          return admin.call();
        } else {
          return elseMaybe.call();
        }

      case Role.User:
        if (user != null) {
          return user.call();
        } else {
          return elseMaybe.call();
        }
      case Role.Moderator:
        if (moderator != null) {
          return moderator.call();
        } else {
          return elseMaybe.call();
        }
      case Role.NotDefine:
        if (notDefine != null) {
          return notDefine.call();
        } else {
          return elseMaybe.call();
        }
      default:
        return elseMaybe.call();
    }
  }
}
