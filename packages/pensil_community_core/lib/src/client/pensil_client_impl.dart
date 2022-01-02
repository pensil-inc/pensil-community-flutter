import 'package:logging/logging.dart';
import 'package:pensil_community_core/src/client/community/community_client.dart';
import 'package:pensil_community_core/src/client/community/community_client_impl.dart';
import 'package:pensil_community_core/src/client/user/pensil_user.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

import 'pensil_client.dart';

/// Handler function used for logging records. Function requires a single
/// [LogRecord] as the only parameter.
typedef LogHandlerFunction = void Function(LogRecord record);

class PensilCoreImpl implements PensilClient {
  PensilCoreImpl({
    required this.communityId,
    this.token,
    PensilApi? pensilApi,
    this.logLevel,
  }) {
    _pensilApi = pensilApi ?? PensilApiImpl(communityId);
  }
  final String communityId;
  final Token? token;
  late PensilApi _pensilApi;
  final Level? logLevel;

  @override
  PensilUser user([String? userId]) =>
      PensilUser(_pensilApi.authservice, userId, userToken: token);

  CommunityClient? _communityClient;
  @override
  CommunityClient get community =>
      _communityClient ??= CommunityClientImpl(_pensilApi, communityId);
}
