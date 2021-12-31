import 'package:example/provider/community_provider.dart';
import 'package:flutter/material.dart';
import 'package:pensil_community_flutter/pensil_community_flutter.dart';

import '../provider/community_provider.dart';

extension ProviderX on BuildContext {
  //ignore: public_member_api_docs
  PensilClient get client => ClientProvider.of(this).client;
}

//ignore: public_member_api_docs
extension Snackbar on BuildContext {
  //ignore: public_member_api_docs
  void showSnackBar(final String message) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(content: Text(message)));
  }
}
