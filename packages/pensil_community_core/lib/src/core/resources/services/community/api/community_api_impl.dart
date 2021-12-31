part of 'community_api.dart';

@Injectable(as: CommunityApi)
class CommunityApiImpl extends CommunityApi {
  @override
  ResultOrException<Community> getCommunityById(String id) async {
    try {
      final client = getIt<DioClient>();
      final response = await client.get(Endpoint.getCommunityById(id));
      final map = client.getJsonBody(response);
      final community = Community.fromJson(map['community']);
      return Right(community);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  ResultOrException<List<Group>> getCommunityGroups(String communityId) async {
    try {
      final client = getIt<DioClient>();
      final response = await client.get(Endpoint.communityGroups(communityId));
      final map = client.getJsonBody(response);
      final groupResponse = GroupResponse.fromJson(map);
      return Right(groupResponse.groups!);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  ResultOrException<List<Community>> getJoinedCommunities() async {
    try {
      final client = getIt<DioClient>();
      final response = await client.get(Endpoint.communityJoined);
      final map = client.getJsonBody(response);
      final groupResponse = CommunityResponse.fromJson(map);
      return Right(groupResponse.list!);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  ResultOrException<Community> joinCommunityByAddress(String address) async {
    try {
      final client = getIt<DioClient>();
      final response =
          await client.get(Endpoint.joinCommunityByAddress(address));
      final map = client.getJsonBody(response);
      final community = Community.fromJson(map['community']);
      return Right(community);
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  @override
  ResultOrException<Community> unSubscribeCommunity(String communityId) async {
    try {
      final client = getIt<DioClient>();
      final response =
          await client.get(Endpoint.unSubscribeCommunity(communityId));
      final map = client.getJsonBody(response);
      final community = Community.fromJson(map['community']);
      return Right(community);
    } on ServerException catch (e) {
      return Left(e);
    }
  }
}
