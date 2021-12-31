import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class GroupProvider extends InheritedWidget {
  const GroupProvider(
      {Key? key, required this.groupClient, required Widget child})
      : super(key: key, child: child);

  final GroupClient groupClient;

  static GroupProvider of(BuildContext context) {
    final client = context.dependOnInheritedWidgetOfExactType<GroupProvider>();
    assert(client != null, 'GroupProvider not found in the widget tree');
    return client!;
  }

  @override
  bool updateShouldNotify(GroupProvider oldWidget) {
    return oldWidget.child != child || oldWidget.groupClient != groupClient;
  }
}
