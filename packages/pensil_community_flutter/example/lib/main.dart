import 'package:example/config.dart';
import 'package:example/pages/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

void main() {
  String communityId = testCommunityId; // 'Your Community Id';
  final client = PensilClient(communityId: communityId);
  configureDependencies();
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.client, Key? key}) : super(key: key);

  final PensilClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Feed Demo',
      builder: (context, child) {
        return PensilCommunityApp(
          bloc: PensilBloc(client: client),
          child: child!,
        );
      },
      home: const AuthPage(),
    );
  }
}
