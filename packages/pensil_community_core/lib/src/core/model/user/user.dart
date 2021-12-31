import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
// ignore: public_member_api_docs
class UserModel with _$UserModel {
  // const UserModel._();
  // ignore: public_member_api_docs
  const factory UserModel(
      {final String? id,
      final String? name,
      final String? mobile,
      final String? lastLoginDate,
      final String? createdAt,
      final String? updatedAt,
      final String? token,
      final String? picture,
      @JsonKey(defaultValue: 0) final int? followers,
      @JsonKey(defaultValue: 0) final int? following,
      @JsonKey(defaultValue: false) final bool? isFollowedByMe,
      @JsonKey(defaultValue: false) final bool? isFollowingMe,
      @JsonKey(defaultValue: false) final bool? isVerifiedByPensil,
      final String? location,
      final String? bio,
      final String? role,
      final String? groupRole,
      final String? webLink,
      final String? facebookLink,
      final String? behanceLink,
      final String? dribbbleLink,
      final String? instagramLink,
      final String? linkedinLink,
      final String? pintrestLink,
      final String? twitterLink,
      final bool? isVerified,
      final String? banner}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
