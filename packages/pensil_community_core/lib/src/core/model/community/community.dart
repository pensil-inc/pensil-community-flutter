import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/model/user/user.dart';
part 'community.g.dart';
part 'community.freezed.dart';

class CommunityResponse {
  CommunityResponse({this.list});

  factory CommunityResponse.fromJson(Map<String, dynamic> json) =>
      CommunityResponse(
        list: json['communities'] == null
            ? null
            : List<Community>.from(json['communities'].map(Community.fromJson)),
      );
  final List<Community>? list;
}

@freezed
class Community with _$Community {
  const factory Community({
    String? id,
    String? name,
    String? address,
    String? logo,
    String? createdAt,
    String? defaultGroup,
    @Default('user') String myRole,
    @Default(false) joined,
    @Default(false) isFeatured,
    @Default(false) isByMe,
    @Default(0) subscribersCount,
    UserModel? createdBy,
  }) = Ccommunity;
  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}

// extension CommunityModelExtension on Community {
//   GroupMemberRole get eMyRole {
//     if (this.myRole == null) {
//       return GroupMemberRole.User;
//     }
//     return GroupMemberRole.User.key(this.myRole);
//   }
// }
