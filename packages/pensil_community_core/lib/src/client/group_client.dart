import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/resources/pensil_api.dart';
import 'package:pensil_community_core/src/core/resources/services/group/group_service.dart';

class GroupClient {
  GroupClient(this._pensilApi, {required this.groupId});

  final String groupId;
  final PensilApi _pensilApi;

  GroupService get _service => _pensilApi.groupService;

  ResultOrError<Group> get() => _service.getGroupDetail(groupId);
}
