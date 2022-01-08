import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';

import 'interceptor/app_interceptor.dart';

class DioClient extends RegisterModule {
  @override
  DioClient(Dio dio, {bool enableLogging = false}) {
    logging = enableLogging;
    _dio = dio;
    baseEndpoint = Endpoint.baseUrl;
    if (logging!) {
      _dio!.interceptors.add(
        LogInterceptor(
          requestHeader: false,
          responseHeader: false,
          requestBody: true,
          responseBody: true,
        ),
      );
    }

    _dio!.interceptors.add(AppInterceptors());
  }

  late Dio? _dio;
  late String? baseEndpoint;
  late bool? logging;

  Future<Response<T>> get<T>(
    String endpoint, {
    Options? options,
    String? fullUrl,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      await checkInternetConnection();
      return await _dio!.get(
        fullUrl ?? '$baseEndpoint$endpoint',
        options: options,
        queryParameters: queryParameters,
      );
    } on SocketException {
      rethrow;
    } on DioError catch (e) {
      final error = _handleError(e);
      throw error;
    }
  }

  Future<Response<T>> post<T>(
    String endpoint, {
    dynamic data,
    Options? options,
    String? fullUrl,
    Function(int val, int total)? onSendProgress,
  }) async {
    try {
      await checkInternetConnection();
      return await _dio!.post(fullUrl ?? '$baseEndpoint$endpoint',
          data: data, options: options, onSendProgress: onSendProgress);
    } on SocketException {
      rethrow;
    } on DioError catch (e) {
      final error = _handleError(e);
      throw error;
    }
  }

  Future<Response<T>> delete<T>(
    String endpoint, {
    dynamic data,
    Options? options,
  }) async {
    try {
      return await _dio!.delete(
        '$baseEndpoint$endpoint',
        data: data,
        options: options,
      );
    } on SocketException {
      rethrow;
    } on DioError catch (e) {
      throw _handleError(e);
    }
  }

  Map<String, dynamic> getJsonBody<T>(Response<T> response) {
    try {
      // ignore: cast_nullable_to_non_nullable
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw BadBodyFormatException('Bad body format');
    }
  }

  List<dynamic> getJsonBodyList<T>(Response<T> response) {
    try {
      // ignore: cast_nullable_to_non_nullable
      return response.data as List<dynamic>;
    } on Exception catch (e, stackTrace) {
      debugPrint(stackTrace.toString());
      throw BadBodyFormatException('Bad body format');
    }
  }

  Exception _handleError(DioError e) {
    String message;
    if (e.response == null) {
      return ServerException('Something went wrong');
    }
    if (e.response!.statusCode == 404 && e.response!.data == 'Not found!') {
      message = 'Not Found!';
    } else {
      final apiResponse = getJsonBody(e.response!);
      if (e.response!.statusCode != 422) {
        message = apiResponse['message'];
      } else {
        message = json.encode(apiResponse['errors']);
      }
    }

    switch (e.response!.statusCode) {
      case 500:
        return InternalServerException(message);
      case 400:
        return BadRequestException(message, response: e.response);
      case 401:
      case 403:
        return UnauthorizedException(message, response: e.response);
      case 404:
        return ResourceNotFoundException(message, response: e.response);

      case 422:
        return UnProcessableException(message, response: e.response);

      case 504:
        return TimeoutException(message, response: e.response);
      default:
        return ServerException(
            'Error occurred while communicating with server', e.response);
    }
  }

  Future<void> checkInternetConnection() async {
    final result = await getIt<Connectivity>().checkConnectivity();
    if (result == ConnectivityResult.none) {
      throw NoInternetException();
    }
  }
}
