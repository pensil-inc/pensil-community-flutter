import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class CommunityProvider extends InheritedWidget {
  const CommunityProvider(
      {Key? key, required this.communityClient, required Widget child})
      : super(key: key, child: child);

  final CommunityClient communityClient;

  static CommunityProvider of(BuildContext context) {
    final client =
        context.dependOnInheritedWidgetOfExactType<CommunityProvider>();
    assert(client != null, 'CommunityProvider not found in the widget tree');
    return client!;
  }

  @override
  bool updateShouldNotify(CommunityProvider oldWidget) {
    return oldWidget.child != child ||
        oldWidget.communityClient != communityClient;
  }
}
