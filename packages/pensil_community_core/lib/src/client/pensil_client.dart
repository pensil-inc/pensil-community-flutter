import 'package:logging/logging.dart';
import 'package:pensil_community_core/src/client/community/community_client.dart';
import 'package:pensil_community_core/src/client/user/pensil_user.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

import 'pensil_client_impl.dart';

// ignore: public_member_api_docs
abstract class PensilClient {
  factory PensilClient({
    required String communityId,
    Token? usertoken,
    PensilApi? pensilApi,
    Level logLevel = Level.WARNING,
  }) =>
      PensilCoreImpl(
        communityId: communityId,
        token: usertoken,
        pensilApi: pensilApi,
        logLevel: logLevel,
      );

  PensilUser user([String userId]);

  CommunityClient get community;
}
