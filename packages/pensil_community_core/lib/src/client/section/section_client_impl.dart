import 'package:dartz/dartz.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_core/src/core/domain/cache.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/page_info.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/post/post_service.dart';
import 'package:pensil_community_core/src/core/resources/services/section/section_service.dart';

class SectionClientImpl implements SectionClient {
  SectionClientImpl(
    PensilApi? pensilApi,
    this.communityId,
    String groupId,
    String sectionId,
  )   : _groupId = groupId,
        _sectionId = sectionId,
        _pensilApi = pensilApi ?? PensilApiImpl(communityId) {
    page = const PageInfo();

    postCache = Cache<String, SectionFeedPageInfo>()
      ..add(sectionId, SectionFeedPageInfo.init(sectionId));
  }

  final String communityId;
  late final PensilApi _pensilApi;
  final String _sectionId;

  late PageInfo page;
  late Cache<String, SectionFeedPageInfo> postCache;

  @override
  String get sectionId => _sectionId;

  final String _groupId;
  @override
  String get groupId => _groupId;

  SectionService get sectionService => _pensilApi.sectionService;

  PostService get postService => _pensilApi.postService;

  @override
  ResultOrError<List<Post>> getSectionPaginatedPosts({
    required String sectionId,
    required SectionType type,
  }) async {
    var feedInfo = postCache[sectionId]!;
    if (!feedInfo.page!.hasNextPage) {
      return Right(feedInfo.list);
    }
    final Either<String, List<Post>> response;
    if (type == SectionType.Realtime) {
      response = await sectionService.getRealtimeSectionPaginatedPosts(
        groupId: groupId,
        sectionId: sectionId,
        lastMessageId: feedInfo.page!.lastId,
      );
    } else {
      response = await sectionService.getSectionPaginatedPosts(
        groupId: groupId,
        sectionId: sectionId,
        page: feedInfo.page!.pageNo,
      );
    }

    return response.fold(
      Left.new,
      (list) {
        page = page.copyWith(
          page: page.pageNo,
          hasNextPage: list.length == 10,
          lastId: list.isNotEmpty ? list.last.id : null,
        );
        feedInfo.list.addAll(list);
        feedInfo = feedInfo.copyWith(page: page);

        if (list.isEmpty) {
          page = page.copyWith.call(hasNextPage: false);
        }

        postCache.add(sectionId, feedInfo);
        return Right(feedInfo.list);
      },
    );
  }

  @override
  ResultOrError<Post> addPost(Post post) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Post> toggleLikePost(String id, bool isLike) =>
      postService.toggleLikePost(id, isLike);
}
