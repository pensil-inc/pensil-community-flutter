import 'package:logging/logging.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_core/src/client/community/community_client_impl.dart';
import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

/// Handler function used for logging records. Function requires a single
/// [LogRecord] as the only parameter.
typedef LogHandlerFunction = void Function(LogRecord record);

class PensilCoreImpl implements PensilClient {
  PensilCoreImpl({
    required String communityId,
    this.bearer,
    PensilApi? pensilApi,
    this.logLevel,
  }) {
    _pensilApi = pensilApi ?? PensilApiImpl(communityId);
    _communityId = communityId;
    Token().bearer = bearer;
    configureDependencies();
  }
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

  late String _communityId;
  @override
  String get communityId => _communityId;

  @override
  PensilUser setUser(UserModel user) =>
      _user = PensilUser(_pensilApi.authservice, userToken: user.token);

  CommunityClient? _communityClient;
  @override
  CommunityClient get community =>
      _communityClient ??= CommunityClientImpl(_pensilApi, communityId);
}
