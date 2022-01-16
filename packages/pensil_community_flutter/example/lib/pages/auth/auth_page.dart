import 'package:example/pages/auth/login_with_google.dart';
import 'package:example/pages/auth/login_with_mobile.dart';
import 'package:example/pages/community/community_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Login with Google'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginWithGoogle(),
                  ),
                );
              },
            ),
            const SizedBox(height: 36),
            ElevatedButton(
              child: const Text('Skip'),
              onPressed: () {
                Navigator.push(
                  context,
                  CommunityDetailPage.getRoute(
                      PensilProvider.of(context).bloc.client),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
