import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/enum.dart/join_status.dart';
import 'package:pensil_community_core/src/core/enum.dart/post_level.dart';
import 'package:pensil_community_core/src/core/enum.dart/section_type.dart';
import 'package:pensil_community_core/src/core/model/page_info.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';

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

extension EmojiStringHelper on String? {
  String valueOrDefault(String value) => this == null
      ? value
      : this!.isEmpty
          ? value
          : this!;
}

class SectionFeedPageInfo {
  SectionFeedPageInfo({this.sectionId, PageInfo? page, required this.list}) {
    this.page = page ?? const PageInfo();
  }
  factory SectionFeedPageInfo.init(String id) =>
      SectionFeedPageInfo(sectionId: id, list: []);

  final String? sectionId;
  PageInfo? page;
  final List<Post> list;
  SectionFeedPageInfo copyWith({
    String? sectionId,
    PageInfo? page,
    List<Post>? list,
  }) =>
      SectionFeedPageInfo(
        list: list ?? this.list,
        page: page ?? this.page,
        sectionId: sectionId ?? this.sectionId,
      );
}
