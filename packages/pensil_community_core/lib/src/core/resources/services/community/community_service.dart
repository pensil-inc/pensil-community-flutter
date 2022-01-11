import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/services/community/api/community_api.dart';
part 'community_service_impl.dart';

// ignore: one_member_abstracts
abstract class CommunityService {
  /// Get community details by id
  ResultOrException<Community> getCommunityById(String id);

  /// Get list of communities in which user is a member
  ResultOrException<List<Community>> getJoinedCommunities();

  /// Join a community by sending community address
  ResultOrException<Community> joinCommunityByAddress(String address);

  /// Unsubscribe from a community by sending community id
  ResultOrException<Community> unSubscribeCommunity(String communityId);

  /// Get list of Groups of a community
  ResultOrException<List<Group>> getCommunityGroups(String communityId);
}
