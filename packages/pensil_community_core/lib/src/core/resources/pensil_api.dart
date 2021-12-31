import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/resources/services/auth/auth_service.dart';
import 'package:pensil_community_core/src/core/resources/services/community/community_service.dart';
part 'pensil_api_impl.dart';

abstract class PensilApi {
  AuthService get authapi;
  CommunityService get community;
}
