import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';
part 'login_request.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequest {
  LoginRequest(
      {this.email,
      this.mobile,
      this.countryCode,
      this.password,
      this.otp,
      this.fcmToken});

  factory LoginRequest.fromError(Map<String, dynamic> json) => LoginRequest(
        password: json.containsKey('password') ? json['password'][0] : null,
        email: json.containsKey('email') ? json['email'][0] : null,
        mobile: json.containsKey('mobile') ? json['mobile'][0] : null,
        countryCode:
            json.containsKey('countryCode') ? json['countryCode'][0] : null,
      );
  LoginRequest copyWith({
    String? email,
    String? password,
    String? mobile,
    int? otp,
    String? fcmToken,
    String? countryCode,
  }) =>
      LoginRequest(
          email: email ?? this.email,
          mobile: mobile ?? this.mobile,
          otp: otp ?? this.otp,
          password: password ?? this.password,
          fcmToken: fcmToken ?? this.fcmToken,
          countryCode: countryCode ?? this.countryCode);

  final String? email;
  final String? password;
  final String? mobile;
  final String? countryCode;
  final int? otp;
  final String? fcmToken;

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  static String catchException(ServerException error) {
    if (error is UnauthorizedException) {
      return error.message;
    }
    final map = json.decode(error.message) as Map<String, dynamic>;
    final model = LoginRequest.fromError(map);
    if (error is UnProcessableException) {
      return model.email ??
          model.mobile ??
          model.password ??
          model.countryCode ??
          '';
    } else if (error is UnProcessableException) {
      return model.email ??
          model.mobile ??
          model.password ??
          model.countryCode ??
          '';
    } else {
      return error.message;
    }
  }
}
