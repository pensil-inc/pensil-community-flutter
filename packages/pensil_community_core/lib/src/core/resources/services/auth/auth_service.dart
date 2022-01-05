import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/model/request/auth/login/login_request.dart';
import 'package:pensil_community_core/src/core/model/request/auth/signup/signup_request.dart';
import 'package:pensil_community_core/src/core/model/user/user.dart';
import 'package:pensil_community_core/src/core/resources/services/auth/api/auth_api.dart';

part 'auth_service_impl.dart';

abstract class AuthService {
  ResultOrError<bool> login(LoginRequest request);
  Future<Either<String, bool>> signup(SignupRequest request, {File? file});
  ResultOrError<UserModel> verifyOTP(int mobile, int otp);
  ResultOrError<UserModel> loginWithOtp(int mobile, String countryCode);
  Future<Either<String, Map<String, dynamic>>> uploadFile(
      {File file, FormData formData, String endpoint});
  ResultOrError<UserModel> getProfile(String userId);
  ResultOrError<UserModel> updateProfile(UserModel model,
      {Option<File>? image});
  Future<Either<String, UserModel>?> updateProfilePicture(File image,
      {bool isProfileAvatar = true});
  ResultOrError<UserModel> followUnFollowUser(UserModel model);

  ResultOrError<UserModel> loginWithGoogle(String uid);
  ResultOrError<List<UserModel>> getFollowers(String userId,
      {bool? isFollower});
}
