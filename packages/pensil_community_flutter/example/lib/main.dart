import 'package:example/pages/community/community_detail_page.dart';
import 'package:example/provider/community_provider.dart';
import 'package:example/config.dart';
import 'package:example/helper/extention.dart';
import 'package:example/helper/pensillog.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

void main() {
  final client = PensilClient(
    communityId: testCommunityId,
    usertoken: const Token(testUserToken),
  );
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
      home: const MyHomePage(),
      builder: (context, child) => ClientProvider(
        client: client,
        child: child!,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getUserProfile() async {
    final _client = context.client;
    final response = await _client.user(testUserId).getUser();
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (r) => PencilLog.cprint(r.toJson()),
    );
  }

  void verifyOTP() async {
    final _client = context.client;
    final response = await _client.user().verifyOTP(testUserMobile, testOtp);
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (r) => PencilLog.cprint(r.toJson()),
    );
  }

  void loginWithOtp() async {
    final _client = context.client;
    final response = await _client
        .user()
        .loginWithOtp(testUserMobile, textCountryCode, testOtp);
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (r) => PencilLog.cprint(r.toJson()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => verifyOTP(),
              child: const Text('Verify OTP'),
            ),
            TextButton(
              onPressed: () => loginWithOtp(),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () => getUserProfile(),
              child: const Text('Get profile'),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.push(context, CommunityDetailPage.getRoute()),
              child: const Text('Open Community'),
            ),
          ],
        ),
      ),
    );
  }
}
