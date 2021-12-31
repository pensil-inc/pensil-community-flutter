import 'dart:developer';

import 'package:flutter/foundation.dart';

class PencilLog {
  static cprint(dynamic object, {dynamic error, String? label}) {
    if (kDebugMode) {
      if (error != null) {
        log('ERROR', error: error);
      }
      if (object is String) {
        print('[${label ?? 'Log'}] $object');
      } else {
        print('[${label ?? 'Log'}]');
        print(object);
      }
    }
  }
}
