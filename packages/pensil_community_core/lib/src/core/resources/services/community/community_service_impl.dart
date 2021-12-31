part of 'community_service.dart';

@Injectable(as: CommunityService)
class CommunityServiceImpl implements CommunityService {
  CommunityServiceImpl(this.api);

  final CommunityApi api;
  @override
  ResultOrError<Community> getCommunityById(String id) async {
    final response = await api.getCommunityById(id);
    return response.fold((l) => Left(l.message), Right.new);
  }

  @override
  ResultOrError<List<Group>> getCommunityGroups(String communityId) async {
    final response = await api.getCommunityGroups(communityId);
    return response.fold((l) => Left(l.message), Right.new);
  }

  @override
  ResultOrError<List<Community>> getJoinedCommunities() async {
    final response = await api.getJoinedCommunities();
    return response.fold((l) => Left(l.message), Right.new);
  }

  @override
  ResultOrError<Community> joinCommunityByAddress(String address) async {
    final response = await api.joinCommunityByAddress(address);
    return response.fold((l) => Left(l.message), Right.new);
  }

  @override
  ResultOrError<Community> unSubscribeCommunity(String communityId) async {
    final response = await api.unSubscribeCommunity(communityId);
    return response.fold((l) => Left(l.message), Right.new);
  }
}
