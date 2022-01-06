import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';

class PensilBloc extends BlocBaseClass<Community, PensilClient> {
  PensilBloc({
    required PensilClient client,
  }) : super(client: client, id: client.communityId);
}
