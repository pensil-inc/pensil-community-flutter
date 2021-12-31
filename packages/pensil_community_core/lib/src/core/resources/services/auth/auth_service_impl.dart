part of 'auth_service.dart';

@Injectable(as: AuthService)
class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this.authService);
  final AuthApi authService;
  // final SessionService sessionService;
  @override
  ResultOrError<bool> login(LoginRequest request) async {
    request = request.copyWith.call(fcmToken: '');
    final response = await authService.login(request);

    return response.fold((l) => Left(LoginRequest.catchException(l)),
        (profile) => const Right(true));
  }

  @override
  Future<Either<String, bool>> signup(SignupRequest request,
      {File? file}) async {
    request = request.copyWith.call(fcmToken: '');
    final map = request.toJson();
    if (file != null) {
      final fileName = file.path.split('/').last;
      final multipart = await MultipartFile.fromFile(
        file.path,
        filename: fileName,
      );
      await map.putIfAbsent('picture', () => multipart);
    }
    final formData = FormData.fromMap(map);
    final response = await authService.signup(formData);
    return response.fold((l) => Left(SignupRequest.catchException(l)!),
        (r) => const Right(true));
  }

  @override
  ResultOrError<UserModel> verifyOTP(int mobile, String otp) async {
    final response = await authService.verifyOTP(mobile, otp);

    return response.fold(
        (l) => Left(SignupRequest.catchException(l)!), Right.new);
  }

  @override
  ResultOrError<UserModel> loginWithOtp(
      int mobile, String countryCode, String otp) async {
    final response = await authService.loginWithOtp(mobile, countryCode, otp);

    return response.fold(
        (l) => Left(SignupRequest.catchException(l)!), Right.new);
  }

  @override
  Future<Either<String, Map<String, dynamic>>> uploadFile({
    File? file,
    FormData? formData,
    String? endpoint,
    Function(int val, int total)? onSendProgress,
  }) async {
    final response = await authService.uploadFile(
        file: file,
        formData: formData,
        endpoint: endpoint,
        onSendProgress: onSendProgress);
    return response.fold(
        (l) => const Left('File uploading failure'), Right.new);
  }

  @override
  ResultOrError<UserModel> getProfile(Token? token, String userId) async {
    final response = await authService.getProfile(token, userId);
    return response.fold((l) => Left(l.message), Right.new);
  }

  @override
  ResultOrError<UserModel> updateProfile(UserModel model,
      {Option<File>? image}) async {
    final response = await authService.updateProfile(model);
    return response.fold(
      (l) => const Left('Server error'),
      (r) async => await image!.fold(
        () => Right(r),
        (image) async {
          await updateProfilePicture(image);
          return Right(r);
        },
      ),
    );
  }

  @override
  Future<Either<String, UserModel>?> updateProfilePicture(
    File image, {
    bool isProfileAvatar = true,
    Function(int val, int total)? onSendProgress,
  }) async {
    final multipart = await MultipartFile.fromFile(
      image.path,
      filename: image.path.split('/').last,
    );
    final data = FormData.fromMap(
        isProfileAvatar ? {'picture': multipart} : {'banner': multipart});
    final response = await uploadFile(
        file: image,
        formData: data,
        onSendProgress: onSendProgress,
        endpoint: isProfileAvatar
            ? Endpoint.updateProfilePicture
            : Endpoint.updateProfileBanner);
    return response.fold(
      (l) => null,
      (map) async {
        final model = UserModel.fromJson(map['user']);
        // await sessionService.saveSession(model);
        return Right(model);
      },
    );
  }

  @override
  ResultOrError<UserModel> followUnFollowUser(UserModel model) async {
    final response = await authService.followUnFollowUser(model);
    return response.fold((l) => const Left('Operation Failure'), Right.new);
  }

  @override
  ResultOrError<UserModel> loginWithGoogle(String uid) async {
    final response = await authService.loginWithGoogle(uid, fcmToken: '');
    return response.fold((l) => const Left('Operation Failure'), Right.new);
  }

  @override
  ResultOrError<List<UserModel>> getFollowers(String userId,
      {bool? isFollower}) async {
    final response =
        await authService.getFollowers(userId, isFollower: isFollower);
    return response.fold((l) => const Left('Operation Failure'), Right.new);
  }
}
