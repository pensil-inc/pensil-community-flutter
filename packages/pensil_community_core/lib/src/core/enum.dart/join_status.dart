// ignore_for_file: constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

enum JoinStatus {
  @JsonValue('joined')
  Joined,
  @JsonValue('invited')
  Invited,
  @JsonValue('requested')
  Requested,
  @JsonValue('declined')
  Declined,
  @JsonValue('not-joined')
  NotJoined,
  @JsonValue('')
  NotDefine,
}
