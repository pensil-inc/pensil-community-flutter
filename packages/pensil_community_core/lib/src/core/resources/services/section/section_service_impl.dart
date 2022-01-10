part of 'section_service.dart';

@Injectable(as: SectionService)
class SectionServiceImpl implements SectionService {
  SectionServiceImpl(this._sectionApi);

  final SectionApi _sectionApi;

  /// Returns paginated list of [Post]s for the [SectionType.Generic] section
  @override
  ResultOrException<List<Post>> getSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required int? page,
  }) =>
      _sectionApi.getSectionPaginatedPosts(groupId, sectionId, page);

  /// Returns paginated list of [Post]s for the [SectionType.Realtime] section
  @override
  ResultOrException<List<Post>> getRealtimeSectionPaginatedPosts({
    required String groupId,
    required String sectionId,
    required String? lastMessageId,
  }) =>
      _sectionApi.getRealtimeSectionPaginatedPosts(
          groupId, sectionId, lastMessageId);

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
