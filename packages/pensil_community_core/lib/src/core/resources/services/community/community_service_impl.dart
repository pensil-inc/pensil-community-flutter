part of 'community_service.dart';

@Injectable(as: CommunityService)
class CommunityServiceImpl implements CommunityService {
  CommunityServiceImpl(this.api);

  final CommunityApi api;
  @override
  ResultOrException<Community> getCommunityById(String id) =>
      api.getCommunityById(id);
  @override
  ResultOrException<List<Group>> getCommunityGroups(String communityId) =>
      api.getCommunityGroups(communityId);

  @override
  ResultOrException<List<Community>> getJoinedCommunities() =>
      api.getJoinedCommunities();

  @override
  ResultOrException<Community> joinCommunityByAddress(String address) =>
      api.joinCommunityByAddress(address);

  @override
  ResultOrException<Community> unSubscribeCommunity(String communityId) =>
      api.unSubscribeCommunity(communityId);
}
