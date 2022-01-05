import 'package:logging/logging.dart';
import 'package:pensil_community_core/src/client/community/community_client.dart';
import 'package:pensil_community_core/src/client/community/community_client_impl.dart';
import 'package:pensil_community_core/src/client/user/pensil_user.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/model/index.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'pensil_client.dart';

/// Handler function used for logging records. Function requires a single
/// [LogRecord] as the only parameter.
typedef LogHandlerFunction = void Function(LogRecord record);

class PensilCoreImpl implements PensilClient {
  PensilCoreImpl({
    required this.communityId,
    this.bearer,
    PensilApi? pensilApi,
    this.logLevel,
  }) {
    _pensilApi = pensilApi ?? PensilApiImpl(communityId);

    Token().bearer = bearer;
  }
  final String communityId;
  final String? bearer;
  late PensilApi _pensilApi;
  final Level? logLevel;

  PensilUser? _user;
  @override
  PensilUser get curentUser {
    if (_user != null) {
      return _user!;
    }
    return _user = PensilUser(_pensilApi.authservice, userToken: bearer);
  }

  @override
  PensilUser setUser(UserModel user) =>
      _user = PensilUser(_pensilApi.authservice, userToken: user.token);

  CommunityClient? _communityClient;
  @override
  CommunityClient get community =>
      _communityClient ??= CommunityClientImpl(_pensilApi, communityId);
}
