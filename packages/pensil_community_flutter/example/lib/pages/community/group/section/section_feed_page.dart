import 'package:example/helper/pensillog.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class SectionfeedPage extends StatefulWidget {
  const SectionfeedPage({Key? key, required this.section}) : super(key: key);

  static Route<T> getRoute<T>(GroupClient groupClient, Section section) {
    return MaterialPageRoute(
      builder: (_) {
        return SectionProvider(
          bloc: SectionBloc(
            groupClient: groupClient,
            sectionId: section.id!,
          ),
          child: SectionfeedPage(section: section),
        );
      },
    );
  }

  final Section section;
  @override
  State<SectionfeedPage> createState() => _SectionFeedState();
}

class _SectionFeedState extends State<SectionfeedPage> {
  Section get section => widget.section;
  bool isLoading = false;

  List<Post>? posts;

  SectionClient? get sectionClient => context.sectionClient;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (posts == null) {
      loadSectionPost();
    }
  }

  void isBusy(bool value) {
    setState(() {
      isLoading = value;
    });
  }

  void loadSectionPost() async {
    isBusy(true);
    final response =
        await sectionClient!.getSectionPaginatedPosts(sectionId: section.id!);
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (data) {
        PencilLog.cprint('Posts received from client. Length: ${data.length}');
        setState(() {
          posts = data;
        });
        final bloc = SectionProvider.of(context).bloc;
        bloc.addAllPostFeed(data);
      },
    );

    isBusy(false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(section.name!)),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : posts != null
              ? SectionList(postList: posts)
              : _buttons(),
    );
  }

  Widget _buttons() {
    return Center(
      child: ElevatedButton(
        child: const Text('Get Posts'),
        onPressed: loadSectionPost,
      ),
    );
  }
}

class SectionList extends StatelessWidget {
  const SectionList({Key? key, required this.postList}) : super(key: key);
  final List<Post>? postList;
  @override
  Widget build(BuildContext context) {
    if (postList == null) {
      return const Center(child: Text('No posts'));
    }
    final id = SectionProvider.of(context).bloc.sectionId;
    return PensilPostFeedListView(sectionId: id);
  }
}
