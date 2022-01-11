// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String?,
      description: json['description'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videoThumbnails: (json['videoThumbnails'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Documents.fromJson(e as Map<String, dynamic>))
          .toList(),
      document: json['document'] as String?,
      groupId: json['groupId'] as String?,
      tabId: json['tabId'] as String?,
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      community: json['community'] == null
          ? null
          : Community.fromJson(json['community'] as Map<String, dynamic>),
      documentName: json['documentName'] as String?,
      poll: json['poll'] == null
          ? null
          : Poll.fromJson(json['poll'] as Map<String, dynamic>),
      likes: json['likes'] as int? ?? 0,
      liveUrl: json['liveUrl'] as String?,
      title: json['title'] as String?,
      liveMeeting: json['liveMeeting'] == null
          ? null
          : LiveMeeting.fromJson(json['liveMeeting'] as Map<String, dynamic>),
      viewCount: json['viewCount'] as int? ?? 0,
      isLikedByMe: json['isLikedByMe'] as bool? ?? false,
      isCommentedOnByMe: json['isCommentedOnByMe'] as bool? ?? false,
      isByMe: json['isByMe'] as bool? ?? false,
      isBookmarkedByMe: json['isBookmarkedByMe'] as bool? ?? false,
      createdBy: json['createdBy'] == null
          ? null
          : Actor.fromJson(json['createdBy'] as Map<String, dynamic>),
      latestLikes: (json['latestLikes'] as List<dynamic>?)
          ?.map((e) => Actor.fromJson(e as Map<String, dynamic>))
          .toList(),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      commentCount: json['commentCount'] as int?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'images': instance.images,
      'videos': instance.videos,
      'videoThumbnails': instance.videoThumbnails,
      'documents': instance.documents,
      'document': instance.document,
      'groupId': instance.groupId,
      'tabId': instance.tabId,
      'group': instance.group,
      'community': instance.community,
      'documentName': instance.documentName,
      'poll': instance.poll,
      'likes': instance.likes,
      'liveUrl': instance.liveUrl,
      'title': instance.title,
      'liveMeeting': instance.liveMeeting,
      'viewCount': instance.viewCount,
      'isLikedByMe': instance.isLikedByMe,
      'isCommentedOnByMe': instance.isCommentedOnByMe,
      'isByMe': instance.isByMe,
      'isBookmarkedByMe': instance.isBookmarkedByMe,
      'createdBy': instance.createdBy,
      'latestLikes': instance.latestLikes,
      'tags': instance.tags,
      'commentCount': instance.commentCount,
      'createdAt': instance.createdAt,
    };

_$_Poll _$$_PollFromJson(Map<String, dynamic> json) => _$_Poll(
      isQuiz: json['isQuiz'] as bool? ?? false,
      isQuestion: json['isQuestion'] as bool? ?? false,
      duration: json['duration'] as int?,
      title: json['title'] as String?,
      endTime: json['endTime'] as String?,
      isExpired: json['isExpired'] as bool?,
      instructions: json['instructions'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      myAnswer: (json['myAnswer'] as List<dynamic>?)
          ?.map((e) => Submissions.fromJson(e as Map<String, dynamic>))
          .toList(),
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answers.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAnsweredByMe: json['isAnsweredByMe'] as bool? ?? false,
      votes: (json['votes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      voteCount: json['voteCount'] as int?,
      answersCount: json['answersCount'] as int? ?? 0,
      selection: json['selection'] == null
          ? null
          : MySelection.fromJson(json['selection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'isQuiz': instance.isQuiz,
      'isQuestion': instance.isQuestion,
      'duration': instance.duration,
      'title': instance.title,
      'endTime': instance.endTime,
      'isExpired': instance.isExpired,
      'instructions': instance.instructions,
      'questions': instance.questions,
      'myAnswer': instance.myAnswer,
      'answers': instance.answers,
      'isAnsweredByMe': instance.isAnsweredByMe,
      'votes': instance.votes,
      'voteCount': instance.voteCount,
      'answersCount': instance.answersCount,
      'selection': instance.selection,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      statement: json['statement'] as String?,
      answer: json['answer'] as String?,
      answerIndex: json['answerIndex'] as int?,
      selectedAnswer: json['selectedAnswer'] as String?,
      user: json['user'] == null
          ? null
          : Actor.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'options': instance.options,
      'statement': instance.statement,
      'answer': instance.answer,
      'answerIndex': instance.answerIndex,
      'selectedAnswer': instance.selectedAnswer,
      'user': instance.user,
    };

_$_Submissions _$$_SubmissionsFromJson(Map<String, dynamic> json) =>
    _$_Submissions(
      id: json['id'] as String?,
      question: json['question'] as String?,
      option: json['option'] as String?,
    );

Map<String, dynamic> _$$_SubmissionsToJson(_$_Submissions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'option': instance.option,
    };

_$_Answers _$$_AnswersFromJson(Map<String, dynamic> json) => _$_Answers(
      user: json['user'] == null
          ? null
          : Actor.fromJson(json['user'] as Map<String, dynamic>),
      submissions: (json['submissions'] as List<dynamic>?)
          ?.map((e) => Submissions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnswersToJson(_$_Answers instance) =>
    <String, dynamic>{
      'user': instance.user,
      'submissions': instance.submissions,
    };

_$_MySelection _$$_MySelectionFromJson(Map<String, dynamic> json) =>
    _$_MySelection(
      choice: json['choice'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
      loading: json['loading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MySelectionToJson(_$_MySelection instance) =>
    <String, dynamic>{
      'choice': instance.choice,
      'isSelected': instance.isSelected,
      'loading': instance.loading,
    };

_$_LiveMeeting _$$_LiveMeetingFromJson(Map<String, dynamic> json) =>
    _$_LiveMeeting(
      id: json['id'] as String?,
      meetingId: json['meetingId'] as String?,
      isLive: json['isLive'] ?? false,
      isEnded: json['isEnded'] ?? true,
      recordings: (json['recordings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      webUrl: json['webUrl'] as String?,
    );

Map<String, dynamic> _$$_LiveMeetingToJson(_$_LiveMeeting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meetingId': instance.meetingId,
      'isLive': instance.isLive,
      'isEnded': instance.isEnded,
      'recordings': instance.recordings,
      'webUrl': instance.webUrl,
    };

_$_Documents _$$_DocumentsFromJson(Map<String, dynamic> json) => _$_Documents(
      id: json['id'] as String?,
      location: json['location'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DocumentsToJson(_$_Documents instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'name': instance.name,
    };
