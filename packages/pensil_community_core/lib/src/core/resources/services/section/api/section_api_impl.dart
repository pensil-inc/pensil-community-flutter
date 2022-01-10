part of 'section_api.dart';

@Injectable(as: SectionApi)
class SectionApiImpl implements SectionApi {
  @override
  Map<String, dynamic> getJsonBody<T>(DioClient client, Response<T> response) =>
      client.getJsonBody(response);

  @override
  ResultOrException<List<Post>> getRealtimeSectionPaginatedPosts(
    String groupId,
    String sectionId,
    String? lastMessageId,
  ) async {
    try {
      final endpoint = Endpoint.getRealtimeSectionPaginatedPosts(
          groupId, sectionId, lastMessageId);
      final client = getIt<DioClient>();
      final response = await client.get(endpoint);
      final map = getJsonBody(client, response);
      final post = PostReponse.fromRealtimeMessageJson(map);

      return Right(post.posts!);
    } on PensilException catch (error) {
      return Left(error);
    }
  }

  @override
  ResultOrException<List<Post>> getSectionPaginatedPosts(
    String groupId,
    String sectionId,
    int? page,
  ) async {
    try {
      final endpoint =
          Endpoint.getSectionPaginatedPosts(groupId, sectionId, page);
      final client = getIt<DioClient>();
      final response = await client.get(endpoint);
      final map = getJsonBody(client, response);
      final post = PostReponse.fromJson(map);

      return Right(post.posts!);
    } on PensilException catch (error) {
      return Left(error);
    }
  }

  @override
  ResultOrException<Group> sectionJoinRequest(
    String groupId,
    String sectionId,
    String userId,
    bool isAccepted,
    bool isRejected,
  ) async {
    try {
      final client = getIt<DioClient>();
      final response = await client.post(
        Endpoint.sectionJoinRequest(
            groupId, sectionId, userId, isAccepted, isRejected),
      );
      final map = getJsonBody(client, response);
      final group = Group.fromJson(map['group']);
      return Right(group);
    } on PensilException catch (error) {
      return Left(error);
    }
  }
}
