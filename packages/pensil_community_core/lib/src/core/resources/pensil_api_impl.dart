part of 'pensil_api.dart';

class PensilApiImpl implements PensilApi {
  PensilApiImpl(this.communityId);

  final String? communityId;

  AuthService? _authApi;
  @override
  AuthService get authapi => _authApi ??= getIt<AuthService>();

  CommunityService? _communityApi;
  @override
  CommunityService get community => _communityApi ??= getIt<CommunityService>();
}
