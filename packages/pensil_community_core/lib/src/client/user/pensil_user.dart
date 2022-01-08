import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/resources/services/auth/auth_service.dart';

class PensilUser with EquatableMixin {
  /// Initializes a [UsersClient] session object
  PensilUser(this._auth, {String? userToken}) {
    token = Token();
    token.bearer = userToken;
  }

  late Token token;

  /// Returns true if user is loggedin other wise false;
  bool get isLoggedIn => token.bearer != null;

  /// Returns true if user profile data is not null otherwise false
  bool get hasProfile => user != null;

  String? get userId => hasProfile ? user!.id : null;

  String? get userToken => Token().bearer;
  UserModel? user;

  final AuthService _auth;

  ResultOrError<UserModel> getUser(String id) async {
    if (user != null) {
      return Future.value(Right(user!));
    } else {
      final response = await _auth.getProfile(id);

      return response.fold(
        Left.new,
        (r) {
          token.bearer = r.token;
          user = r;
          return Right.new(r);
        },
      );
    }
  }

  ResultOrError<UserModel> verifyOTP(int mobile, int otp) async {
    final response = await _auth.verifyOTP(mobile, otp);
    return response.fold(
      Left.new,
      (r) {
        token.bearer = r.token;
        user = r;
        return Right.new(r);
      },
    );
  }

  ResultOrError<UserModel> loginWithOtp(int mobile, String countryCode) =>
      _auth.loginWithOtp(mobile, countryCode);

  ResultOrError<UserModel> loginWithGoogle(String uid) async {
    final response = await _auth.loginWithGoogle(uid);
    return response.fold(
      Left.new,
      (r) {
        token.bearer = r.token;
        user = r;
        return Right.new(r);
      },
    );
  }

  @override
  List<Object?> get props => [user];
}
