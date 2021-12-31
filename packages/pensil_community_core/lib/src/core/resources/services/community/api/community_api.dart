import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';
import 'package:pensil_community_core/src/core/http/dio_client.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';

part 'community_api_impl.dart';

// ignore: one_member_abstracts
abstract class CommunityApi {
  ResultOrException<Community> getCommunityById(String id);

  /// Get list of [Community] in which user is a member
  ResultOrException<List<Community>> getJoinedCommunities();

  /// Join a community by sending community address
  ResultOrException<Community> joinCommunityByAddress(String address);

  /// Unsubscribe from a community by sending community id
  ResultOrException<Community> unSubscribeCommunity(String communityId);

  /// Get list of [Group] of a community
  ResultOrException<List<Group>> getCommunityGroups(String communityId);
}
