import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';

import 'pensil_client_impl.dart';

abstract class PensilClient {
  factory PensilClient({
    required String communityId,
    String? usertoken,
    PensilApi? pensilApi,
    Level logLevel = Level.WARNING,
  }) =>
      PensilCoreImpl(
        communityId: communityId,
        bearer: usertoken,
        pensilApi: pensilApi,
        logLevel: logLevel,
      );

  PensilUser get curentUser;

  String get communityId;

  /// Set data for the [currentUser] assigned to [PensilClient]
  PensilUser setUser(UserModel user);

  CommunityClient get community;
}
