import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class SectionFeedPage extends StatelessWidget {
  const SectionFeedPage({Key? key, required this.section}) : super(key: key);

  static Route<T> getRoute<T>(GroupClient groupClient, Section section) {
    return MaterialPageRoute(
      builder: (_) {
        return SectionProvider(
          bloc: SectionBloc(
              groupClient: groupClient,
              sectionId: section.id!,
              type: section.sectionType),
          child: SectionFeedPage(section: section),
        );
      },
    );
  }

  final Section section;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(section.name!)),
      body: PensilSectionFeedBuilder(
        errorBuilder: (_, err) {
          return Center(
            child: Text(err.message),
          );
        },
        builder: (BuildContext context, List<Post>? community) {
          final id = SectionProvider.of(context).bloc.sectionId;
          return PensilPostFeedListView(sectionId: id);
        },
      ),
    );
  }
}
