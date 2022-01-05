import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';

class CommunityBloc extends GenericBloc<CommunityClient> {
  CommunityBloc({
    required PensilClient pensilClient,
  }) : super(client: pensilClient.community);
}
