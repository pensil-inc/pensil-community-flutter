// ignore_for_file: constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

enum SectionType {
  @JsonValue('generic')
  Generic,
  @JsonValue('realtime')
  Realtime,
  @JsonValue('')
  NotDefine,
}

const _$SectionTypeTypeMap = {
  SectionType.Generic: 'generic',
  SectionType.Realtime: 'realtime',
};

extension SectionTypeHelper on SectionType {
  String? encode() => _$SectionTypeTypeMap[this];

  SectionType key(String? value) => decodeSectionType(value);

  SectionType decodeSectionType(String? value) => _$SectionTypeTypeMap.entries
      .singleWhere((element) => element.value == value)
      .key;

  T? when<T>({
    required T Function() generic,
    required T Function() realtime,
  }) {
    switch (this) {
      case SectionType.Generic:
        return generic.call();

      case SectionType.Realtime:
        return realtime.call();
      default:
    }
    return null;
  }

  T mayBeWhen<T>({
    required T Function() elseMaybe,
    T Function()? generic,
    T Function()? realtime,
  }) {
    switch (this) {
      case SectionType.Generic:
        if (generic != null) {
          return generic.call();
        } else {
          return elseMaybe();
        }
      case SectionType.Realtime:
        if (realtime != null) {
          return realtime.call();
        } else {
          return elseMaybe();
        }
      default:
        return elseMaybe();
    }
  }
}
