import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class ClientProvider extends InheritedWidget {
  const ClientProvider({
    Key? key,
    required this.client,
    required Widget child,
  }) : super(key: key, child: child);

  final PensilClient client;

  static ClientProvider of(BuildContext context) {
    final client = context.dependOnInheritedWidgetOfExactType<ClientProvider>();
    assert(client != null, 'Client not found in the widget tree');
    return client!;
  }

  @override
  bool updateShouldNotify(ClientProvider oldWidget) {
    return oldWidget.child != child || oldWidget.client != client;
  }
}
