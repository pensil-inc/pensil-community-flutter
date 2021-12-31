import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';

part 'signup_request.g.dart';

@JsonSerializable(createFactory: false)
class SignupRequest {
  SignupRequest({
    this.email,
    this.name,
    this.username,
    this.mobile,
    this.password,
    this.otp,
    this.fcmToken,
  });

  factory SignupRequest.fromError(Map<String, dynamic> json) => SignupRequest(
        password: json.containsKey('password') ? json['password'][0] : null,
        email: json.containsKey('email') ? json['email'][0] : null,
        mobile: json.containsKey('mobile') ? json['mobile'][0] : null,
        username: json.containsKey('username') ? json['username'][0] : null,
        name: json.containsKey('name')
            ? json['name'][0]
            : json.containsKey('otp')
                ? json['otp'][0]
                : 'null',
        // otp: json.containsKey('otp') ? json['otp'][0] : null,
      );
  final String? email;
  final String? password;
  final String? mobile;
  final int? otp;
  final String? username;
  final String? name;
  final String? fcmToken;
  Map<String, dynamic> toJson() => _$SignupRequestToJson(this);

  SignupRequest copyWith({
    String? email,
    String? password,
    String? mobile,
    int? otp,
    String? name,
    String? fcmToken,
    String? username,
    MultipartFile? file,
  }) =>
      SignupRequest(
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        otp: otp ?? this.otp,
        password: password ?? this.password,
        username: username ?? this.username,
        name: name ?? this.name,
        fcmToken: fcmToken ?? this.fcmToken,
      );

  static String? catchException(ServerException error) {
    if (error is UnauthorizedException) {
      return error.message;
    } else if (error is BadBodyFormatException) {
      return error.message;
    }
    // final map = json.decode(error.message) as Map<String, dynamic>;
    final map = error.jsonData;
    if (map == null) {
      return 'Something went wrong';
    }
    final model = SignupRequest.fromError(map['errors']);
    if (error is UnProcessableException) {
      if (model.email != null) {
        return model.email;
      }
      if (model.mobile != null) {
        return model.mobile;
      }

      if (model.name != null) {
        return model.name;
      }
      if (model.password != null) {
        return model.password;
      }
      if (model.otp != null) {
        return 'Incorrect OTP';
      }
    } else if (error is UnProcessableException) {
      if (model.email != null) {
        return model.email;
      }
      if (model.mobile != null) {
        return model.mobile;
      }

      if (model.name != null) {
        return model.name;
      }
      if (model.password != null) {
        return model.password;
      }
      if (model.otp != null) {
        return 'Incorrect OTP';
      }
    } else {
      return error.message;
    }
  }
}
