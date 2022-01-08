import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/src/core/bloc/group/group_bloc.dart';

class GroupProvider extends InheritedWidget {
  const GroupProvider({
    Key? key,
    required this.bloc,
    required Widget child,
  }) : super(key: key, child: child);

  static GroupProvider of(BuildContext context) {
    var result = context.dependOnInheritedWidgetOfExactType<GroupProvider>();
    assert(result != null, '''No `GroupProvider` found in context''');
    return result!;
  }

  final GroupBloc bloc;
  @override
  bool updateShouldNotify(GroupProvider oldWidget) =>
      bloc.id != oldWidget.bloc.id; //

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<GroupBloc>('bloc', bloc));
  }
}
