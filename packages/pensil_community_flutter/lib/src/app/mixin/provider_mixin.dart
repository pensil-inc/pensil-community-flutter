import 'package:flutter/material.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/index.dart';

mixin PensilMixin<T extends StatefulWidget> on State<T> {
  PensilBloc get bloc => PensilProvider.of(context).bloc;
  PensilClient get client => bloc.client;
}

mixin CommunityMixin<T extends StatefulWidget> on State<T> {
  CommunityBloc get bloc => CommunityProvider.of(context).bloc;
  CommunityClient get client => bloc.client;
}
mixin GroupMixin<T extends StatefulWidget> on State<T> {
  GroupBloc get bloc => GroupProvider.of(context).bloc;
  GroupClient get client => bloc.client;
}

mixin SectionMixin<T extends StatefulWidget> on State<T> {
  SectionBloc get bloc => SectionProvider.of(context).bloc;
  SectionClient get client => bloc.client;
}
