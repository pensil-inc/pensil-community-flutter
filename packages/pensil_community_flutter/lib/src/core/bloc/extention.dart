import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/index.dart';

extension ProviderX on BuildContext {
  PensilClient get pensilClient => PensilProvider.of(this).bloc.client;
  CommunityClient get communityClient => CommunityProvider.of(this).bloc.client;
  GroupClient get groupClient => GroupProvider.of(this).bloc.client;
  SectionClient get sectionClient => SectionProvider.of(this).bloc.client;
}
