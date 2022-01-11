// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../core/http/dio_client.dart' as _i9;
import '../../core/resources/services/auth/api/auth_api.dart' as _i3;
import '../../core/resources/services/auth/auth_service.dart' as _i4;
import '../../core/resources/services/community/api/community_api.dart' as _i5;
import '../../core/resources/services/community/community_service.dart' as _i6;
import '../../core/resources/services/group/group_service.dart' as _i10;
import '../../core/resources/services/post/api/post_api.dart' as _i11;
import '../../core/resources/services/post/post_service.dart' as _i12;
import '../../core/resources/services/section/api/section_api.dart' as _i13;
import '../../core/resources/services/section/section_service.dart' as _i14;
import 'injection.dart' as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthApi>(() => _i3.AuthApiImpl());
  gh.factory<_i4.AuthService>(() => _i4.AuthServiceImpl(get<_i3.AuthApi>()));
  gh.factory<_i5.CommunityApi>(() => _i5.CommunityApiImpl());
  gh.factory<_i6.CommunityService>(
      () => _i6.CommunityServiceImpl(get<_i5.CommunityApi>()));
  gh.lazySingleton<_i7.Connectivity>(() => registerModule.connectivity());
  gh.lazySingleton<_i8.Dio>(() => registerModule.dio());
  gh.lazySingleton<_i9.DioClient>(() => registerModule.dioClient);
  gh.factory<_i10.GroupService>(() => _i10.GroupServiceImpl());
  gh.factory<_i11.PostApi>(() => _i11.PostApiImpl());
  gh.factory<_i12.PostService>(() => _i12.PostServiceImpl(get<_i11.PostApi>()));
  gh.factory<_i13.SectionApi>(() => _i13.SectionApiImpl());
  gh.factory<_i14.SectionService>(
      () => _i14.SectionServiceImpl(get<_i13.SectionApi>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
