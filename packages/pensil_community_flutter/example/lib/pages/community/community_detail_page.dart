import 'package:example/helper/extention.dart';
import 'package:example/helper/pensillog.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class CommunityDetailPage extends StatefulWidget {
  const CommunityDetailPage({Key? key}) : super(key: key);
  static Route<T> getRoute<T>() {
    return MaterialPageRoute(builder: (_) {
      return const CommunityDetailPage();
    });
  }

  @override
  State<CommunityDetailPage> createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<CommunityDetailPage> {
  void getCommunityGroups() async {
    final _client = context.client;
    final response = await _client.community().getGroups();
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (r) => PencilLog.cprint('Available Groups: ${r.length}'),
    );
  }

  void getCommunityDetail() async {
    final _client = context.client;
    final response = await _client.community().get();
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (r) => PencilLog.cprint('Community : ${r.name}'),
    );
  }

  List<Group>? list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Detail'),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text('Get Groups'),
          onPressed: getCommunityDetail,
        ),
      ),
    );
  }
}
