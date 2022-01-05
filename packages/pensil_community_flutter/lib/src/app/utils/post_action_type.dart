// ignore_for_file: constant_identifier_names
part of '../post_model.dart';

enum PostAction {
  Like,
  Vote,
  Delete,
  Bookmark,
  Modify,
  Retweet,
  OpenProfile,
  MeetingEnded,
  TagClick,
  OnReact,
  OpenMentionUser
}

extension PostActionHelperX on PostAction {
  T? when<T>({
    T Function()? like,
    T Function()? vote,
    T Function()? delete,
    T Function()? bookmark,
    T Function()? modify,
    T Function()? retweet,
    T Function()? openProfile,
    T Function()? meetingEnded,
    T Function()? tagClick,
    T Function()? elseMaybe,
    T Function()? onReact,
    T Function()? openMentionUser,
  }) {
    switch (this) {
      case PostAction.Like:
        if (like != null) {
          return like.call();
        }
        break;
      case PostAction.Vote:
        if (vote != null) {
          return vote.call();
        }
        break;
      case PostAction.Delete:
        if (delete != null) {
          return delete.call();
        }
        break;
      case PostAction.Bookmark:
        if (bookmark != null) {
          return bookmark.call();
        }
        break;
      case PostAction.Modify:
        if (modify != null) {
          return modify.call();
        }
        break;
      case PostAction.Retweet:
        if (retweet != null) {
          return retweet.call();
        }
        break;
      case PostAction.OpenProfile:
        if (openProfile != null) {
          return openProfile.call();
        }
        break;
      case PostAction.MeetingEnded:
        if (meetingEnded != null) {
          return meetingEnded.call();
        }
        break;

      case PostAction.TagClick:
        if (tagClick != null) {
          return tagClick.call();
        }
        break;
      case PostAction.OnReact:
        if (onReact != null) {
          return onReact.call();
        }
        break;

      case PostAction.OpenMentionUser:
        if (openMentionUser != null) {
          return openMentionUser.call();
        }
        break;
      default:
    }
    if (elseMaybe != null) return elseMaybe.call();
    return null;
  }
}
