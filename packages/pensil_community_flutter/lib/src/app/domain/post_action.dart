import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
part 'post_action.freezed.dart';

@freezed
class PostAction with _$PostAction {
  /// Like/Unlike the post
  const factory PostAction.onLike(Post post, [dynamic extra]) = _OnLike;

  /// Vote on poll | Share your answer to question
  const factory PostAction.onVote(Post post, [dynamic extra]) = _OnVote;

  /// Delete the post
  const factory PostAction.onDelete(Post post, [dynamic extra]) = _OnDelete;

  /// Bookmark the post
  const factory PostAction.onBookmark(Post post, [dynamic extra]) = _OnBookmark;

  /// Update the post
  const factory PostAction.onUpdate(Post post, [dynamic extra]) = _OnUpdate;

  ///  Internally used in [PensilPostFeedListView]
  const factory PostAction.onUserTap(Post post, [dynamic extra]) = _OnUserTap;
  const factory PostAction.onReact(Post post, [dynamic extra]) = _OnReact;

  ///  Internally used in [PensilPostFeedListView]
  const factory PostAction.onTagClick(Post post, [dynamic extra]) = _OnTagClick;

  /// Ends meeting if available in post
  const factory PostAction.onMeetingEnd(Post post, [dynamic extra]) =
      _OnMeetingEnd;

  ///  Internally used in [PensilPostFeedListView]
  const factory PostAction.onMentionUserTap(Post post, [dynamic extra]) =
      _OnMentionUserTap;
}
