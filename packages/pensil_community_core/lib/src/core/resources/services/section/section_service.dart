import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';
import 'package:pensil_community_core/src/core/resources/services/section/api/section_api.dart';
part 'section_service_impl.dart';

abstract class SectionService {
  /// Returns paginated list of [Post]s for the [SectionType.Generic] section
  ResultOrError<List<Post>> getSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required int? page,
  });

  /// Returns paginated list of [Post]s for the [SectionType.Realtime] section
  ResultOrError<List<Post>> getRealtimeSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required String? lastMessageId,
  });

  /// Admin can accept/reject users request to his closed section
  ///
  ///  Set [isAccepted] and [isRejected] to false to send join request
  ///
  /// Set [isAccepted] to true to accept join request as Admin
  ///
  /// Set [isRejected] to true to reject join request as Admin
  ResultOrError<Group> sectionJoinRequest({
    required String groupId,
    required String sectionId,
    required String userId,
    required bool isAccepted,
    required bool isRejected,
  });
}
