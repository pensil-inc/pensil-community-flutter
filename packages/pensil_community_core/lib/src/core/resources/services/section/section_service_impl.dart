part of 'section_service.dart';

@Injectable(as: SectionService)
class SectionServiceImpl implements SectionService {
  SectionServiceImpl(this._sectionApi);

  final SectionApi _sectionApi;

  /// Returns paginated list of [Post]s for the [SectionType.Generic] section
  @override
  ResultOrError<List<Post>> getSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required int? page,
  }) async {
    final response =
        await _sectionApi.getSectionPaginatedPosts(groupId, sectionId, page);
    return response.fold(
      (l) => Left(l.message),
      Right.new,
    );
  }

  /// Returns paginated list of [Post]s for the [SectionType.Realtime] section
  @override
  ResultOrError<List<Post>> getRealtimeSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required String? lastMessageId,
  }) async {
    final response = await _sectionApi.getRealtimeSectionPaginatedPosts(
        groupId, sectionId, lastMessageId);
    return response.fold(
      (l) => Left(l.message),
      Right.new,
    );
  }

  @override
  ResultOrError<Group> sectionJoinRequest(
      {required String groupId,
      required String sectionId,
      required String userId,
      required bool isAccepted,
      required bool isRejected}) {
    throw UnimplementedError();
  }
}
