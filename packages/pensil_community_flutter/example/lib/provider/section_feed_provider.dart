import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class SectionFeedProvider extends InheritedWidget {
  const SectionFeedProvider(
      {Key? key,
      required this.groupId,
      required this.sectionClient,
      required Widget child})
      : super(key: key, child: child);

  final SectionClient sectionClient;

  final String groupId;

  static SectionFeedProvider of(BuildContext context) {
    final client =
        context.dependOnInheritedWidgetOfExactType<SectionFeedProvider>();
    assert(client != null, 'SectionFeedProvider not found in the widget tree');
    return client!;
  }

  @override
  bool updateShouldNotify(SectionFeedProvider oldWidget) {
    return oldWidget.child != child || oldWidget.sectionClient != sectionClient;
  }
}
