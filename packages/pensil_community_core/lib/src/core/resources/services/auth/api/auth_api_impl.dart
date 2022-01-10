part of 'auth_api.dart';

@Injectable(as: AuthApi)
class AuthApiImpl implements AuthApi {
  @override
  ResultOrException<UserModel> followUnFollowUser(UserModel model) {
    throw UnimplementedError();
  }

  @override
  Future<Either<PensilException, List<UserModel>>> getFollowers(String userId,
      {bool? isFollower}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<UserModel> getProfile(String userId) async {
    try {
      // final header = {'Authorization': 'Bearer $token'};
      final client = getIt<DioClient>();
      final response = await client.get(Endpoint.crudUser(userId));
      // options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on PensilException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(PensilException(e.toString()));
    }
  }

  @override
  ResultOrException<UserModel> login(LoginRequest model) async {
    try {
      final header = {'Authorization': ''};
      final client = getIt<DioClient>();
      final response = await client.get(Endpoint.verifyOtp,
          options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on PensilException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(PensilException(e.toString()));
    }
  }

  @override
  ResultOrException<UserModel> loginWithGoogle(String uid,
      {String? fcmToken}) async {
    try {
      final header = {'Authorization': 'Bearer $uid'};
      final data = {'fcmToken': fcmToken};
      final client = getIt<DioClient>();
      final response = await client.post(Endpoint.googleAuth,
          options: Options(headers: header), data: data);
      final map = client.getJsonBody(response);
      final actor = UserModel.fromJson(map['user']);
      return Right(actor);
    } on PensilException catch (error) {
      return Left(error);
    }
  }

  @override
  ResultOrException<bool> sendOTP(LoginRequest model) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<bool> signup(FormData model) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<UserModel> updateProfile(UserModel model) {
    throw UnimplementedError();
  }

  @override
  Future<Either<PensilException, Map<String, dynamic>>> uploadFile(
      {File? file,
      FormData? formData,
      String? endpoint,
      Function(int val, int total)? onSendProgress}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<UserModel> verifyOTP(int mobile, int otp) async {
    try {
      final header = {'Authorization': ''};
      final body = {'mobile': mobile, 'otp': otp};
      final client = getIt<DioClient>();
      final response = await client.post(Endpoint.verifyOtp,
          data: body, options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on PensilException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(PensilException(e.toString()));
    }
  }

  @override
  ResultOrException<UserModel> loginWithOtp(
      int mobile, String countryCode) async {
    try {
      final header = {'Authorization': ''};
      final body = {
        'mobile': '$mobile',
        'countryCode': countryCode,
      };
      final client = getIt<DioClient>();
      final response = await client.post(Endpoint.loginWithMobile,
          data: body, options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on PensilException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(PensilException(e.toString()));
    }
  }
}
