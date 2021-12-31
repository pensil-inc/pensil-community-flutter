import 'package:logging/logging.dart';
import 'package:pensil_community_core/src/client/community_client.dart';
import 'package:pensil_community_core/src/client/pensil_user.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

import 'pensil_client.dart';

/// Handler function used for logging records. Function requires a single
/// [LogRecord] as the only parameter.
typedef LogHandlerFunction = void Function(LogRecord record);

// ignore: unused_element
final _levelEmojiMapper = {
  Level.INFO: 'ℹ️',
  Level.WARNING: '⚠️',
  Level.SEVERE: '🚨',
};

class PensilCoreImpl implements PensilClient {
  PensilCoreImpl({
    required this.communityId,
    this.token,
    PensilApi? pensilApi,
    this.logLevel,
    this.logHandlerFunction,
  }) {
    _pensilApi = pensilApi ?? PensilApiImpl(communityId);
  }
  final String communityId;
  final Token? token;
  late PensilApi? _pensilApi;
  final Level? logLevel;
  final LogHandlerFunction? logHandlerFunction;

  @override
  PensilUser user([String? userId]) =>
      PensilUser(_pensilApi!.authapi, userId, userToken: token);

  @override
  CommunityClient community({
    String? userId,
    Token? token,
  }) =>
      CommunityClient(
        _pensilApi!.community,
        communityId: communityId,
        userToken: token,
        userId: userId,
      );
}
