part of 'pensil_api.dart';

class PensilApiImpl implements PensilApi {
  PensilApiImpl(this.communityId);

  final String? communityId;

  AuthService? _authService;
  @override
  AuthService get authservice => _authService ??= getIt<AuthService>();

  CommunityService? _communityApi;
  @override
  CommunityService get communityService =>
      _communityApi ??= getIt<CommunityService>();

  GroupService? _groupService;
  @override
  GroupService get groupService => _groupService ??= getIt<GroupService>();

  SectionService? _sectionService;
  @override
  SectionService get sectionService =>
      _sectionService ??= getIt<SectionService>();

  PostService? _postService;
  @override
  PostService get postService => _postService ??= getIt<PostService>();
}
