part of 'auth_api.dart';

@Injectable(as: AuthApi)
class AuthApiImpl implements AuthApi {
  @override
  ResultOrException<UserModel> followUnFollowUser(UserModel model) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerException, List<UserModel>>> getFollowers(String userId,
      {bool? isFollower}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<UserModel> getProfile(Token? token, String userId) async {
    try {
      final header = {'Authorization': 'Bearer $token'};
      final client = getIt<DioClient>();
      final response = await client.get(Endpoint.crudUser(userId),
          options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on ServerException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerException(e.toString()));
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
    } on ServerException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  @override
  ResultOrException<UserModel> loginWithGoogle(String uid, {String? fcmToken}) {
    throw UnimplementedError();
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
  Future<Either<ServerException, Map<String, dynamic>>> uploadFile(
      {File? file,
      FormData? formData,
      String? endpoint,
      Function(int val, int total)? onSendProgress}) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<UserModel> verifyOTP(int mobile, String otp) async {
    try {
      final header = {'Authorization': ''};
      final body = {'mobile': mobile, 'otp': otp};
      final client = getIt<DioClient>();
      final response = await client.post(Endpoint.verifyOtp,
          data: body, options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on ServerException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }

  @override
  ResultOrException<UserModel> loginWithOtp(
      int mobile, String countryCode, String otp) async {
    try {
      final header = {'Authorization': ''};
      final body = {
        'mobile': '$mobile',
        'countryCode': countryCode,
        'otp': otp,
      };
      final client = getIt<DioClient>();
      final response = await client.post(Endpoint.loginWithMobile,
          data: body, options: Options(headers: header));
      final map = client.getJsonBody(response);
      final post = UserModel.fromJson(map['user']);
      return Right(post);
    } on ServerException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(ServerException(e.toString()));
    }
  }
}
