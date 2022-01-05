import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';
import 'package:pensil_community_core/src/core/http/dio_client.dart';
import 'package:pensil_community_core/src/core/model/request/auth/login/login_request.dart';
import 'package:pensil_community_core/src/core/model/user/user.dart';
part 'auth_api_impl.dart';

abstract class AuthApi {
  ResultOrException<UserModel> login(LoginRequest model);

  Future<Either<ServerException, bool>> signup(FormData model);
  Future<Either<Exception, bool>> sendOTP(LoginRequest model);
  ResultOrException<UserModel> verifyOTP(int mobile, int otp);
  ResultOrException<UserModel> loginWithOtp(int mobile, String countryCode);
  ResultOrException<UserModel> loginWithGoogle(String uid, {String? fcmToken});
  Future<Either<Exception, Map<String, dynamic>>> uploadFile({
    File? file,
    FormData? formData,
    String? endpoint,
    Function(int val, int total)? onSendProgress,
  });
  ResultOrException<UserModel> getProfile(String userId);
  ResultOrException<UserModel> updateProfile(UserModel model);
  ResultOrException<UserModel> followUnFollowUser(UserModel model);
  Future<Either<Exception, List<UserModel>>> getFollowers(String userId,
      {bool? isFollower});
}
