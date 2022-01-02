import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pensil_community_core/src/client/section/section_client.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/section/section_service.dart';

class SectionClientImpl implements SectionClient {
  SectionClientImpl(
    PensilApi? pensilApi,
    this.communityId,
    this.groupId,
    String sectionId,
  )   : _sectionId = sectionId,
        _pensilApi = pensilApi ?? PensilApiImpl(communityId);

  final String groupId;
  final String communityId;
  late final PensilApi _pensilApi;
  final String _sectionId;

  @override
  String? get sectionId => _sectionId;

  SectionService get sectionService => _pensilApi.sectionService;

  List<Post>? _postList;
  @override
  List<Post>? get postList => _postList;

  @protected
  set postList(List<Post>? value) {
    _postList = value;
  }

  @override
  ResultOrError<List<Post>> getSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required int? page,
  }) async {
    final response = await sectionService.getSectionPaginatedPosts(
      groupId: groupId,
      sectionId: sectionId,
      page: page,
    );

    return response.fold(
      Left.new,
      (r) {
        postList = r;
        return Right(r);
      },
    );
  }
}
