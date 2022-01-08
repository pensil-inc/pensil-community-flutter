import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class PageInfo {
  const PageInfo({
    this.page,
    this.hasNextPage = true,
    this.lastId,
  });

  factory PageInfo.fromRawJson(String str) =>
      PageInfo.fromJson(json.decode(str));

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
        page: json['page'],
        hasNextPage: json['hasNextPage'],
      );
  final int? page;
  final String? lastId;
  final bool hasNextPage;
  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        'page': page,
        'hasNextPage': hasNextPage,
      };
  PageInfo copyWith({int? page, bool? hasNextPage, String? lastId}) => PageInfo(
        hasNextPage: hasNextPage ?? this.hasNextPage,
        page: page ?? this.page,
        lastId: lastId ?? this.lastId,
      );

  @override
  String toString() => 'Page: $page, hasNextPage: $hasNextPage';
}

extension PageInfoHelper on PageInfo {
  int get pageNo {
    if (page == null) {
      return 1;
    } else {
      return page! + 1;
    }
  }
}
