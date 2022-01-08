import 'package:example/pages/community/community_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

extension StringExtension on String {
  int get toint => int.parse(this);
}

class LoginWithMobile extends StatefulWidget {
  const LoginWithMobile({Key? key}) : super(key: key);

  @override
  _LoginWithMobileState createState() => _LoginWithMobileState();
}

class _LoginWithMobileState extends State<LoginWithMobile> with PensilMixin {
  /// Mobile no. inout controller
  late TextEditingController _mobileController;

  /// OTP inout controller
  late TextEditingController _otpController;
  bool optSent = false;
  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    setState(() {
      _loading = value;
    });
  }

  /// Default country code
  String counterCode = '+91';

  /// List of countries code
  List<String> codes = ['+91', '+92', '+44', '+61', '+86'];

  @override
  void initState() {
    super.initState();
    _mobileController = TextEditingController();
    _otpController = TextEditingController();
  }

  void resetForm() {
    counterCode = '+91';
    _mobileController.text = '';
    _otpController.text = '';
    optSent = false;
    loading = false;
  }

  /// Verify OTP
  void verifyOTP() async {
    /// OTP validation
    if (_otpController.text.isEmpty) {
      showSnackBar(context, 'Please enter otp');
      return;
    } else if (_otpController.text.length < 4) {
      showSnackBar(context, 'Please enter valid otp');
      return;
    }
    loading = true;

    /// Send mobile and Otp to validate otp
    final response = await client.curentUser.verifyOTP(
      _mobileController.text.toint,
      _otpController.text.toint,
    );
    response.fold((error) {
      /// Display error message when otp verification fail
      showSnackBar(context, error);
      loading = false;
    }, (user) {
      /// Navigate to home page when otp verification success

      Navigator.pushReplacement(context, CommunityDetailPage.getRoute(client));
      resetForm();
    });
  }

  void loginWithOtp() async {
    /// Check mobile no. validation
    if (_mobileController.text.isEmpty) {
      showSnackBar(context, 'Please enter mobile no.');
      return;
    } else if (_mobileController.text.length < 10) {
      showSnackBar(context, 'Please enter valid mobile');
      return;
    }

    loading = true;

    /// Send mobile no. to send otp
    final response = await client.curentUser.loginWithOtp(
      _mobileController.text.toint,
      counterCode,
    );

    response.fold((error) {
      /// Display error message when otp sent fail
      showSnackBar(context, error);
    }, (r) {
      setState(() {
        optSent = true;
      });

      showSnackBar(context, "OTP sent to your mobile");
    });

    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Demo'),
        actions: [
          TextButton(
            child: const Text(
              'Reset',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              resetForm();
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (!optSent)
              TextField(
                controller: _mobileController,
                decoration: InputDecoration(
                    labelText: 'Mobile',
                    border: const OutlineInputBorder(),
                    prefixIcon: _dropdown()),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp("[^0-9]")),
                  LengthLimitingTextInputFormatter(10)
                ],
              ),
            const SizedBox(height: 16),
            if (optSent)
              TextField(
                controller: _otpController,
                decoration: const InputDecoration(
                  labelText: 'OTP',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp("[^0-9]")),
                  LengthLimitingTextInputFormatter(4)
                ],
              ),
            const SizedBox(height: 16),
            if (loading) const CircularProgressIndicator(),
            if (optSent && !loading)
              ElevatedButton(
                onPressed: () => verifyOTP(),
                child: const Text('Verify OTP'),
              ),
            if (!optSent && !loading)
              ElevatedButton(
                onPressed: () => loginWithOtp(),
                child: const Text('Send OTP'),
              ),
          ],
        ),
      ),
    );
  }

  Widget _dropdown() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton<String>(
        value: counterCode,
        elevation: 8,
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            counterCode = newValue!;
          });
        },
        items: codes.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  void showSnackBar(BuildContext context, String s) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(s),
    ));
  }
}
