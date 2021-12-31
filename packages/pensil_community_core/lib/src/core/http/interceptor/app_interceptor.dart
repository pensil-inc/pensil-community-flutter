import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class AppInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.putIfAbsent('content-type', () => 'application/json');
    var curl = '';
    curl += 'curl';
    curl += ' -X ${options.method}';
    curl += ' \'${options.path}\'';
    if (kDebugMode) {
      print(curl);
    }

    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    return Future.value(response);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response != null && err.response!.statusCode != 502) {
      final message = err.response!.statusMessage;
      log('Code:${err.response!.statusCode}, Message: $message',
          name: '[API ERROR]:');
    }
    super.onError(err, handler);
    return Future.value(err);
  }
}
