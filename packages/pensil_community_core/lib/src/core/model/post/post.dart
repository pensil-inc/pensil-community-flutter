import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pensil_community_core/src/core/model/community/community.dart';
import 'package:pensil_community_core/src/core/model/group/group.dart';
import 'package:pensil_community_core/src/core/model/user/actor/actor.dart';
part 'post.g.dart';
part 'post.freezed.dart';

class PostReponse {
  PostReponse({this.posts, this.page});

  factory PostReponse.fromJson(Map<String, dynamic> json) => PostReponse(
        page: json['page'],
        posts: (json['posts'] as List<dynamic>?)
            ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
  factory PostReponse.fromRealtimeMessageJson(Map<String, dynamic> json) =>
      PostReponse(
        posts: (json['messages'] as List<dynamic>?)
            ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
  final List<Post>? posts;
  int? page;
}

@freezed
class Post with _$Post {
  const factory Post({
    String? id,
    String? description,
    List<String>? images,
    List<String>? videos,
    List<String>? videoThumbnails,
    List<Documents>? documents,
    String? document,
    String? groupId,
    String? tabId,
    Group? group,
    Community? community,
    String? documentName,
    Poll? poll,
    @Default(0) int? likes,
    String? liveUrl,
    String? title,

    /// Child? Tweet
    LiveMeeting? liveMeeting,
    @Default(0) int viewCount,
    @Default(false) bool isLikedByMe,
    @Default(false) bool isCommentedOnByMe,
    @Default(false) bool isByMe,
    @Default(false) bool isBookmarkedByMe,
    Actor? createdBy,
    // List<Post>? comments,
    // List<Post>? replies,
    List<Actor>? latestLikes,
    List<String>? tags,
    int? commentCount,
    String? createdAt,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class Poll with _$Poll {
  const factory Poll({
    @Default(false) bool isQuiz,
    @Default(false) bool isQuestion,
    int? duration,
    String? title,
    String? endTime,
    bool? isExpired,
    String? instructions,
    List<Question>? questions,
    List<Submissions>? myAnswer,
    List<Answers>? answers,
    @Default(false) bool isAnsweredByMe,
    Map<String, double>? votes,
    int? voteCount,
    @Default(0) int answersCount,
    MySelection? selection,
  }) = _Poll;

  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);
}

extension PollHelper on Poll {
  bool isMyVote(String option) {
    if (myAnswer != null && myAnswer!.isNotEmpty) {
      if (myAnswer!.first.option == option) {
        return true;
      }
    }
    return false;
  }

  bool get hasExpired {
    if (DateTime.tryParse(endTime!)!.isBefore(DateTime.now())) {
      return true;
    } else {
      return false;
    }
  }

  String votePercent(String option) =>
      (votes![option]! * 100).toStringAsFixed(1);

  String votCountOnOption(String option) {
    final val = votes![option];
    final count = (voteCount! * val!).ceilToDouble().toStringAsFixed(0);
    return count;
  }

  bool isAnsweredCorrect() {
    if (questions!.first.answer == myAnswer!.first.option) {
      return true;
    } else {
      return false;
    }
  }

  int get totalAttemptedUsersCount => answersCount;
}

@freezed
class Question with _$Question {
  const factory Question({
    String? id,
    List<String>? options,
    String? statement,
    String? answer,
    int? answerIndex,
    String? selectedAnswer,
    Actor? user,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Submissions with _$Submissions {
  const factory Submissions({
    String? id,
    String? question,
    String? option,
  }) = _Submissions;

  factory Submissions.fromJson(Map<String, dynamic> json) =>
      _$SubmissionsFromJson(json);
}

@freezed
class Answers with _$Answers {
  const factory Answers({Actor? user, List<Submissions>? submissions}) =
      _Answers;

  factory Answers.fromJson(Map<String, dynamic> json) =>
      _$AnswersFromJson(json);
}

@freezed
class MySelection with _$MySelection {
  const factory MySelection(
      {String? choice,
      @Default(false) bool isSelected,
      @Default(false) bool loading}) = _MySelection;

  factory MySelection.fromJson(Map<String, dynamic> json) =>
      _$MySelectionFromJson(json);
}

@freezed
class LiveMeeting with _$LiveMeeting {
  const factory LiveMeeting(
      {String? id,
      String? meetingId,
      @Default(false) isLive,
      @Default(true) isEnded,
      List<String>? recordings,
      String? webUrl}) = _LiveMeeting;
  factory LiveMeeting.fromJson(Map<String, dynamic> json) =>
      _$LiveMeetingFromJson(json);
}

@freezed
class Documents with _$Documents {
  const factory Documents({
    String? id,
    String? location,
    String? name,
  }) = _Documents;
  factory Documents.fromJson(Map<String, dynamic> json) =>
      _$DocumentsFromJson(json);
}
