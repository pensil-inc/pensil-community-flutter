import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/enum.dart/join_status.dart';
import 'package:pensil_community_core/src/core/enum.dart/post_level.dart';
import 'package:pensil_community_core/src/core/enum.dart/section_type.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  const factory Section({
    String? id,
    String? name,
    String? emoji,
    @Default(SectionType.Generic) SectionType sectionType,
    @Default(PostLevel.Anyone) PostLevel? postLevel,
    @Default(false) bool isClosed,
    @Default(false) bool isJoined,
    @Default(JoinStatus.NotDefine) JoinStatus? status,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

extension TabModelHelper on Section {
  bool get hasPostPermissions {
    if (postLevel == PostLevel.Anyone) {
      return true;
    }
    return false;
  }
}

extension StringHelper on String? {
  String get valueOrDefault => this == null
      ? '#'
      : this!.isEmpty
          ? '#'
          : this!;
}
