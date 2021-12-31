import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/services/community/community_service.dart';

class CommunityClient {
  CommunityClient(
    this._service, {
    required this.communityId,
    String? userId,
    Token? userToken,
  })  : _userToken = userToken,
        _userId = userId;

  final String communityId;

  final String? _userId;
  final Token? _userToken;

  final CommunityService _service;

  ResultOrError<Community> get() => _service.getCommunityById(communityId);
  ResultOrError<List<Group>> getGroups() =>
      _service.getCommunityGroups(communityId);
}
