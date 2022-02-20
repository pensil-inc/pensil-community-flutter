import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
part 'post_action.freezed.dart';

@freezed
class PostAction with _$PostAction {
  const factory PostAction.onLike(Post post, [dynamic extra]) = _OnLike;
  const factory PostAction.onVote(Post post, [dynamic extra]) = _OnVote;
  const factory PostAction.onDelete(Post post, [dynamic extra]) = _OnDelete;
  const factory PostAction.onBookmark(Post post, [dynamic extra]) = _OnBookmark;
  const factory PostAction.onUpdate(Post post, [dynamic extra]) = _OnUpdate;
  const factory PostAction.onUserTap(Post post, [dynamic extra]) = _OnUserTap;
  const factory PostAction.onReact(Post post, [dynamic extra]) = _OnReact;
  const factory PostAction.onTagClick(Post post, [dynamic extra]) = _OnTagClick;
  const factory PostAction.onMeetingEnd(Post post, [dynamic extra]) =
      _OnMeetingEnd;
  const factory PostAction.onMentionUserTap(Post post, [dynamic extra]) =
      _OnMentionUserTap;
}
