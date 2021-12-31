// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: avoid_positional_boolean_parameters

class Endpoint {
  static const String baseUrl = 'https://api.pensil.in/pensil-social/api/';
  static const String login = 'login';
  static const String loginWithMobile = 'login/otp';
  static const String loginWithEmail = 'auth/email/otp';
  static const String profile = 'profile';
  static const String profilePicture = 'profile/picture';
  static const String googleAuth = 'auth/google';
  static const String register = 'register';
  static const String forgotPassword = 'auth/reset-password';
  static const String verifyOtp = 'verify-otp';
  static const String comment = 'comment';
  static const String message = 'message';
  static const String post = 'post';
  static const String explore = 'post/explore';
  static const String bookmark = 'bookmark';
  static const String tagSearch = 'tag/search';
  static const String tagInterest = 'tag/interests';
  static const String exams = 'exam';
  static const String examsMy = 'exam/my';
  static const String setTagInterest = 'tag/interests/set';
  static const String saveSelectedExam = 'exam/set';
  static const String user = 'user';
  static const String suggestedUser = 'suggested-users';
  static const String updateProfilePicture = '$profile/picture';
  static const String updateProfileBanner = '$profile/banner';
  static const String notificationsList = '$user/notifications';
  static const String group = 'group';
  static const String community = 'community';
  static const String communityJoined = 'community/joined';
  static const String razorPayBaseUrl = 'https://api.razorpay.com/v1/';
  static String orders = 'orders';
  static String goLive = 'dyte/go-live';
  static String feedback = 'feedback';
  static String directChat = 'chats/direct';

  static String startMeeting(String groupId) {
    return 'dyte/start-meeting/$groupId';
  }

  static String getMeetingDataById(String id) {
    return 'dyte/join-meeting/$id/json';
  }

  static String endMeeting(String name, String id) {
    return 'dyte/meeting/$name/end/$id';
  }

  static String paginatedPost({bool? forExplor, int? pageNo}) {
    forExplor = forExplor ?? false;
    pageNo = pageNo ?? 1;
    return '/${forExplor ? 'post/explore-paginated' : 'post-paginated'}?page=$pageNo';
  }

  static String getExplorePaginatedPost(int? pageNo) {
    pageNo = pageNo ?? 1;
    return '/$explore-paginated/community?page=$pageNo';
  }

  static String toggleLikePost(String id, bool isLike) {
    return '$post/$id/${isLike ? 'like' : 'dislike'}';
  }

  static String toggleReactionOnComment({
    required String postId,
    required String? commentId,
    String? replyId,
    required bool isAdd,
  }) {
    if (replyId != null) {
      return '$post/$postId/comment/$commentId/reply/$replyId/${isAdd ? 'like' : 'dislike'}';
    }
    if (commentId != null) {
      return '$post/$postId/comment/$commentId/${isAdd ? 'like' : 'dislike'}';
    }
    return '$post/$postId/${isAdd ? 'like' : 'dislike'}';
  }

  static String getPostLikes(String postId) {
    return '$post/$postId/likes';
  }

  static String voteOnPoll(String postId, String option) {
    return '$post/$postId/vote';
  }

  static String submitQuiz(String postId) {
    return '$post/$postId/answer-quiz';
  }

  static String crudPost(String? postId, {required bool isEdit}) {
    // isEdit = isEdit ;
    return isEdit ? '$post/$postId' : post;
  }

  static String cruPostInRealtime(String postId, {bool isEdit = false}) {
    // isEdit = isEdit ?? false;
    return isEdit ? '$post/$postId' : post;
  }

  static String crudComment(String postId, {String? commentId}) {
    if (commentId != null) {
      return '$post/$postId/$comment/$commentId';
    }
    return '$post/$postId/$comment';
  }

  static String crudReply(String postId, String commentId, {String? replyId}) {
    if (replyId == null) {
      return '$post/$postId/$comment/$commentId/reply';
    }
    return '$post/$postId/$comment/$commentId/reply/$replyId';
  }

  static String crudUser(String id) {
    return '$user/$id';
  }

  static String getFollowers(String userId, {bool? isFollower}) {
    isFollower = isFollower ?? false;
    return '$user/$userId/${isFollower ? 'followers' : 'followeds'}';
  }

  static String usersPost(String userId) {
    return '$user/$userId/posts';
  }

  static String addPostBookmark(String postId) {
    return '$post/$postId/$bookmark';
  }

  static String removePostBookmark(String id) {
    return 'post/$id/$bookmark';
  }

  static String getMediaLinkInfo(String videoUrl) =>
      'https://noembed.com/embed?url=$videoUrl';

  static String uploadGroupBanner(String id) {
    return '$group/$id/banner';
  }

  static String getUserGroup(String? userId) {
    if (userId != null) {
      return 'user/$userId/group';
    }
    return group;
  }

  static String getGroupDetail(String groupId) {
    return 'group/$groupId';
  }

  static String joinGroup(String id, bool isJoin) {
    return '$group/$id/${isJoin ? 'join' : 'leave'}';
  }

  static String acceptGroupGroup(String id, bool isAccept) {
    return '$group/$id/${isAccept ? 'accept' : 'reject'}-invite';
  }

  static String crudGroup(String? id, {bool isEdit = false}) {
    // isEdit = isEdit ?? false;
    return isEdit ? '$group/$id' : group;
  }

  static String groupPost(String groupId) {
    return '$group/$groupId/posts';
  }

  static String getSectionPaginatedPosts(
      String groupId, String sectionId, int? page) {
    return '$group/$groupId/section/$sectionId/posts?page=$page';
  }

  static String getRealtimeSectionPaginatedPosts(
      String groupId, String sectionId, String? lastMessageId) {
    return '$group/$groupId/section/$sectionId/messages/timestamped?lastId=$lastMessageId';
  }

  static String groupAnnoucement(String groupId) {
    return '$group/$groupId/annoucement';
  }

  static String groupMembers(String groupId) {
    return '$group/$groupId/members';
  }

  static String groupMemberInvite(String groupId) {
    return '$group/$groupId/invite';
  }

  static String removeUserFromGroup(String groupId, String userId) {
    return '$group/$groupId/remove-user/$userId';
  }

  static String groupJoinRequest(
      String groupId, String userId, bool isAccepted) {
    return '$group/$groupId/join-request/$userId/${isAccepted ? 'accept' : 'reject'}';
  }

  /// Set [isAccepted] and [isRejected] to false to send join request
  ///
  /// Set [isAccepted] to true to accept join request
  ///
  /// Set [isRejected] to true to reject join request

  static String sectionJoinRequest(String groupId, String sectionId,
      String userId, bool isAccepted, bool isRejected) {
    if (!isAccepted && !isRejected) {
      return '$group/$groupId/section/$sectionId/join';
    } else if (isAccepted) {
      return '$group/$groupId/section/$sectionId/join-request/$userId';
    } else {
      return '$group/$groupId/section/$sectionId/join-request/$userId/reject';
    }
  }

  static String cancelJoinRequest(String groupId) {
    return '$group/$groupId/cancel-join-request';
  }

  static String cancelgroupInvitet(String groupId, String userId) {
    return '$group/$groupId/cancel-invite/$userId';
  }

  static String addSectionInGroup(String groupId,
      {bool isEdit = false, String? tabId}) {
    if (isEdit) {
      return '$group/$groupId/tab/$tabId';
    }
    return '$group/$groupId/tab';
  }

  static String deleteSectionInGroup(String groupId, String tabId) {
    return '$group/$groupId/tab/$tabId';
  }

  static String createGroupAnnouncement(String groupId) {
    return '$group/$groupId/annoucement';
  }

  static String deleteGroupAnnouncement(String groupId, String postId) {
    return '$group/$groupId/annoucement/$postId';
  }

  static String createGroupPaymentOrder(String groupId) {
    return 'payment/group/$groupId/create-order';
  }

  static String verifyGroupPayment(String groupId, String paymentId) {
    return 'payment/group/$groupId/verify-payment/$paymentId';
  }

  static String createTask(String groupId) {
    return 'group/$groupId/task';
  }

  static String getTasks(String groupId, String date) {
    return 'group/$groupId/task/$date';
  }

  static String getdatesForGroupTasks(String groupId) {
    return 'group/$groupId/task-dates';
  }

  static String updateTaksById(String groupId, String taskId) {
    return 'group/$groupId/task/$taskId';
  }

  static String deleteTaksById(String groupId, String taskId) {
    return 'group/$groupId/task/$taskId';
  }

  /// Community
  static String communityGroups(String communityId) {
    return 'community/$communityId/groups';
  }

  static String getCommunityUserPostList(
      String communityId, String userId, int page) {
    return 'community/$communityId/user/$userId/posts?page=$page';
  }

  static String getCommunityUserActivities(
      String communityId, String userId, int page) {
    return 'community/$communityId/user/$userId/activities?page=$page';
  }

  static String communityLink(String communityId) {
    return 'community/$communityId/links';
  }

  static String crudCommunity(String id, {bool isEdit = false}) {
    // isEdit = isEdit ?? false;
    return isEdit ? '$community/$id' : community;
  }

  static String uploadCommunityLogo(String id) {
    return '$community/$id/update-logo';
  }

  static String addLinkInCommunity(
    String communityId, {
    bool isEdit = false,
    String? linkId,
  }) {
    if (!isEdit) {
      return '$community/$communityId/links';
    }
    return '$community/$communityId/links/$linkId';
  }

  static String joinCommunityByAddress(String address) {
    return '$community/join-by-address/$address';
  }

  static String unSubscribeCommunity(String communityId) {
    return '$community/leave/$communityId';
  }

  static String getCommunityById(String id) {
    return 'community-by-id/$id';
  }

  static String getCommunitySubscribers(String communityId, String groupId) {
    return '$community/$communityId/subscribers?group=$groupId';
  }

  static String getExplorePostByTag(String communityId) {
    return '$post/explore-by-tag-paginated/community/$communityId/';
  }

  static String makeModereator(
      String communityId, String groupId, String userId) {
    return 'community/$communityId/group/$groupId/user/$userId/make-moderator';
  }

  static String updateMemberRole(String groupId, String userId) {
    return 'group/$groupId/members/$userId/update-role';
  }

  static String verifyCoupon(String groupId, String coupon) {
    return 'payment/group/$groupId/verify-coupon/$coupon';
  }

  static String markNotificationAsRead(String id) {
    return 'user/notifications/$id/mark-as-read';
  }

  static String markNotificationAs({bool? isAllSeen, bool? isAllReceived}) {
    if (isAllSeen!) {
      return 'user/notifications/mark-as-read';
    } else {
      return 'user/notifications/mark-as-received';
    }
  }

  static String sendDirectMessage(String id, bool isedit) {
    if (isedit) {
      return 'chats/direct/edit-message/$id';
    } else {
      return 'chats/direct/$id/send-message';
    }
  }

  static String getDirectChat(String id, String? lastId) =>
      'chats/direct/$id?lastId=$lastId';

  static String uploadAttachmentinDirectMessage(String messagId) =>
      'chats/direct/$messagId/upload-attachment';

  static String deleteDirectChat(String id) =>
      'chats/direct/delete-message/$id';
}
