import 'package:example/config.dart';
import 'package:example/helper/pensillog.dart';
import 'package:example/pages/community/community_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

void main() {
  final client = PensilClient(communityId: testCommunityId, usertoken: null);
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with PensilMixin {
  void getUserProfile() async {
    final response = await client.curentUser.getUser(testUserId);
    response.fold(
      (l) => PencilLog.cprint('', error: l),
      (r) => PencilLog.cprint(r.toJson()),
    );
  }

  void verifyOTP() async {
    final bloc = PensilProvider.of(context).bloc;
    final response =
        await bloc.client.curentUser.verifyOTP(testUserMobile, testOtp);
    response.fold((l) => PencilLog.cprint('', error: l), (r) {
      PencilLog.cprint(r.toJson());
    });
  }

  void loginWithOtp() async {
    final response =
        await client.curentUser.loginWithOtp(testUserMobile, textCountryCode);
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
                  Navigator.push(context, CommunityDetailPage.getRoute(client)),
              child: const Text('Open Community'),
            ),
          ],
        ),
      ),
    );
  }
}
