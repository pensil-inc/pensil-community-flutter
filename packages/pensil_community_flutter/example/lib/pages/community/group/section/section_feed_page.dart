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
    final response = await sectionClient!
        .getSectionPaginatedPosts(sectionId: section.id!, page: 0);
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (data) {
        PencilLog.cprint('Posts received from client. Length: ${data.length}');
        setState(() {
          posts = data;
        });
        final bloc = SectionProvider.of(context).bloc;
        bloc.addAllActivities(data);
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
    return PostFeedListView(
      sectionId: id,
      limit: 10,
    );
    // return ListView.builder(
    //   itemCount: postList!.length,
    //   itemBuilder: (context, index) {
    //     final post = postList![index];
    //     return Container(
    //       margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
    //       padding: const EdgeInsets.all(16),
    //       decoration: BoxDecoration(
    //         border: Border.all(color: Colors.grey[300]!),
    //         borderRadius: BorderRadius.circular(8),
    //         color: Colors.white,
    //         boxShadow: [
    //           BoxShadow(
    //             color: Colors.black.withOpacity(0.1),
    //             blurRadius: 5,
    //             spreadRadius: 1,
    //           ),
    //         ],
    //       ),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             post.createdBy!.name,
    //             style: const TextStyle(
    //               fontWeight: FontWeight.bold,
    //               fontSize: 16,
    //             ),
    //           ),
    //           Text(
    //             'Created at ${DateTime.tryParse(post.createdAt!)!.toLocal()}',
    //             style: const TextStyle(
    //               fontSize: 12,
    //               color: Colors.grey,
    //             ),
    //           ),
    //           Text(post.title ?? ''),
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
