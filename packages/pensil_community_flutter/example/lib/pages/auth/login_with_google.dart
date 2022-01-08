import 'package:example/pages/community/community_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

class LoginWithGoogle extends StatefulWidget {
  const LoginWithGoogle({Key? key}) : super(key: key);

  @override
  _LoginWithGoogleState createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> with PensilMixin {
  late TextEditingController _tokenController;

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    setState(() {
      _loading = value;
    });
  }

  @override
  void initState() {
    super.initState();
    _tokenController = TextEditingController(text: '');
  }

  void resetForm() {
    _tokenController.text = '';
    loading = false;
  }

  void loginWithGoogle() async {
    /// Token validation
    if (_tokenController.text.isEmpty) {
      showSnackBar(context, 'Please paste google token');
      return;
    }

    loading = true;

    final response =
        await client.curentUser.loginWithGoogle(_tokenController.text);

    response.fold((error) {
      /// Display error message when login failed
      showSnackBar(context, error);
    }, (r) {
      /// Display success message when login success
      showSnackBar(context, 'Login success');
      Navigator.pushReplacement(context, CommunityDetailPage.getRoute(client));
    });

    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google login Demo'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _tokenController,
              decoration: const InputDecoration(
                labelText: 'Google user Token',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Note: Paste token received from google sign in",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            if (loading) const CircularProgressIndicator(),
            if (!loading)
              ElevatedButton(
                onPressed: () => loginWithGoogle(),
                child: const Text('Login via Google Token'),
              ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(s),
    ));
  }
}
