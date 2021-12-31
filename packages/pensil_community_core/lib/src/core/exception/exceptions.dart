import 'package:dio/dio.dart';

/// Exception used when server returns error during apis call
class ServerException implements Exception {
  /// Exception used when server returns error during apis call
  ServerException(this.message, [this.response])
      : jsonData = _decode(response) {
    if (response != null) {
      _code = response!.statusCode;
    }
  }

  /// Error message return from the server
  final String message;

  int? _code;

  final Response<dynamic>? response;

  final Map<String, dynamic>? jsonData;

  static Map<String, dynamic>? _decode(Response<dynamic>? response) {
    try {
      if (response != null &&
          response.data != null &&
          response.data is Map<String, dynamic>) {
        return response.data;
      }
    } on FormatException {
      return null;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServerException &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          response == other.response;

  @override
  int get hashCode =>
      message.hashCode ^ message.hashCode ^ _code.hashCode ^ _code.hashCode;

  @override
  String toString() =>
      // ignore: lines_longer_than_80_chars
      'ServerException{messahe: $message jsonData: $jsonData,  code: $_code}';
}

/// Exception used when no internet connection is available during apis call
class NoInternetException extends ServerException {
  NoInternetException()
      : super('No internet connection. Try to connect to another network');
}

/// Exception used when server returns error during apis call
class NotFoundException extends ServerException {
  NotFoundException(String message, Response? response)
      : super(message, response);
}

class BadBodyFormatException extends ServerException {
  BadBodyFormatException(String message) : super(message);
}

class InternalServerException extends ServerException {
  InternalServerException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class ApiDataNotFoundException extends ServerException {
  ApiDataNotFoundException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class BadRequestException extends ServerException {
  BadRequestException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class TimeoutException extends ServerException {
  TimeoutException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class BadUrlException extends ServerException {
  BadUrlException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class UnauthorizedException extends ServerException {
  UnauthorizedException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class ResourceNotFoundException extends ServerException {
  ResourceNotFoundException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class InvalidInputException extends ServerException {
  InvalidInputException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class UnProcessableException extends ServerException {
  UnProcessableException(String message, {Response<dynamic>? response})
      : super(message, response);
}
