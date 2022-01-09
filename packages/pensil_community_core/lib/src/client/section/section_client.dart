import 'package:pensil_community_core/src/client/section/section_client_impl.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/enum.dart/section_type.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

abstract class SectionClient {
  factory SectionClient({
    required String communityId,
    required String groupId,
    required String sectionId,
    required PensilApi pensilApi,
  }) =>
      SectionClientImpl(
        pensilApi,
        communityId,
        groupId,
        sectionId,
      );
  String get sectionId;
  String get groupId;

  ResultOrError<List<Post>> getSectionPaginatedPosts({
    required String sectionId,
    required SectionType type,
  });

  ResultOrError<Post> addPost(Post post) => ResultOrError.error('');
  ResultOrError<Post> toggleLikePost(String id, bool isLike);
}
