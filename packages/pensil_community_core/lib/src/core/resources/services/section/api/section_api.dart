import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';
import 'package:pensil_community_core/src/core/http/dio_client.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';

part 'section_api_impl.dart';

abstract class SectionApi {
  Map<String, dynamic> getJsonBody<T>(DioClient client, Response<T> response);

  /// Returns paginated list of [Post]s for the [SectionType.Generic] section
  ResultOrException<List<Post>> getSectionPaginatedPosts(
    String groupId,
    String sectionId,
    int? page,
  );

  // / Returns paginated list of [Post]s for the [SectionType.Realtime] section
  ResultOrException<List<Post>> getRealtimeSectionPaginatedPosts(
    String groupId,
    String sectionId,
    String? lastMessageId,
  );

  /// Admin can accept/reject users request to his closed section
  ///
  ///  Set [isAccepted] and [isRejected] to false to send join request
  ///
  /// Set [isAccepted] to true to accept join request as Admin
  ///
  /// Set [isRejected] to true to reject join request as Admin
  ResultOrException<Group> sectionJoinRequest(
    String groupId,
    String sectionId,
    String userId,
    bool isAccepted,
    bool isRejected,
  );
}
