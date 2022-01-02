import 'package:equatable/equatable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/http/token.dart';
import 'package:pensil_community_core/src/core/model/user/user.dart';
import 'package:pensil_community_core/src/core/resources/services/auth/auth_service.dart';

class PensilUser with EquatableMixin {
  /// Initializes a [UsersClient] session object
  PensilUser(
    this._auth,
    this._id, {
    Token? userToken,
  }) : _userToken = userToken;

  final String? _id;
  final Token? _userToken;
  final AuthService _auth;

  ResultOrError<UserModel> getUser() {
    if (_id != null) {
      return _auth.getProfile(_userToken, _id!);
    } else {
      return ResultOrError.error('User not found');
    }
  }

  ResultOrError<UserModel> verifyOTP(int mobile, String otp) =>
      _auth.verifyOTP(mobile, otp);

  ResultOrError<UserModel> loginWithOtp(
          int mobile, String countryCode, String otp) =>
      _auth.loginWithOtp(mobile, countryCode, otp);

  @override
  List<Object?> get props => [_id];
}
