import 'package:dio/dio.dart';

/// Exception used when server returns error during apis call
class PensilException implements Exception {
  /// Exception used when server returns error during apis call
  PensilException(this.message, [this.response])
      : jsonData = _decode(response) {
    if (response != null) {
      _code = response!.statusCode;
    }
  }

  /// Error message
  final String message;

  /// HTTP code received from server
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
      other is PensilException &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          response == other.response;

  @override
  int get hashCode =>
      message.hashCode ^ message.hashCode ^ _code.hashCode ^ _code.hashCode;

  @override
  String toString() =>
      // ignore: lines_longer_than_80_chars
      'PensilException{message: $message jsonData: $jsonData,  code: $_code}';
}

/// Exception used when no internet connection is available during apis call
class NoInternetException extends PensilException {
  NoInternetException()
      : super('No internet connection. Try to connect to another network');
}

/// Exception used when server returns error during apis call
class NotFoundException extends PensilException {
  NotFoundException(String message, Response? response)
      : super(message, response);
}

class BadBodyFormatException extends PensilException {
  BadBodyFormatException(String message) : super(message);
}

class InternalServerException extends PensilException {
  InternalServerException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class ApiDataNotFoundException extends PensilException {
  ApiDataNotFoundException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class BadRequestException extends PensilException {
  BadRequestException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class TimeoutException extends PensilException {
  TimeoutException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class BadUrlException extends PensilException {
  BadUrlException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class UnauthorizedException extends PensilException {
  UnauthorizedException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class ResourceNotFoundException extends PensilException {
  ResourceNotFoundException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class InvalidInputException extends PensilException {
  InvalidInputException(String message, {Response<dynamic>? response})
      : super(message, response);
}

class UnProcessableException extends PensilException {
  UnProcessableException(String message, {Response<dynamic>? response})
      : super(message, response);
}
