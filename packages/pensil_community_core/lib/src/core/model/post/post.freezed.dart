// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

  _Post call(
      {String? id,
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
      int? likes = 0,
      String? liveUrl,
      String? title,
      LiveMeeting? liveMeeting,
      int viewCount = 0,
      bool isLikedByMe = false,
      bool isCommentedOnByMe = false,
      bool isByMe = false,
      bool isBookmarkedByMe = false,
      Actor? createdBy,
      List<Actor>? latestLikes,
      List<String>? tags,
      int? commentCount,
      String? createdAt}) {
    return _Post(
      id: id,
      description: description,
      images: images,
      videos: videos,
      videoThumbnails: videoThumbnails,
      documents: documents,
      document: document,
      groupId: groupId,
      tabId: tabId,
      group: group,
      community: community,
      documentName: documentName,
      poll: poll,
      likes: likes,
      liveUrl: liveUrl,
      title: title,
      liveMeeting: liveMeeting,
      viewCount: viewCount,
      isLikedByMe: isLikedByMe,
      isCommentedOnByMe: isCommentedOnByMe,
      isByMe: isByMe,
      isBookmarkedByMe: isBookmarkedByMe,
      createdBy: createdBy,
      latestLikes: latestLikes,
      tags: tags,
      commentCount: commentCount,
      createdAt: createdAt,
    );
  }

  Post fromJson(Map<String, Object?> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<String>? get videos => throw _privateConstructorUsedError;
  List<String>? get videoThumbnails => throw _privateConstructorUsedError;
  List<Documents>? get documents => throw _privateConstructorUsedError;
  String? get document => throw _privateConstructorUsedError;
  String? get groupId => throw _privateConstructorUsedError;
  String? get tabId => throw _privateConstructorUsedError;
  Group? get group => throw _privateConstructorUsedError;
  Community? get community => throw _privateConstructorUsedError;
  String? get documentName => throw _privateConstructorUsedError;
  Poll? get poll => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  String? get liveUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Child? Tweet
  LiveMeeting? get liveMeeting => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  bool get isLikedByMe => throw _privateConstructorUsedError;
  bool get isCommentedOnByMe => throw _privateConstructorUsedError;
  bool get isByMe => throw _privateConstructorUsedError;
  bool get isBookmarkedByMe => throw _privateConstructorUsedError;
  Actor? get createdBy =>
      throw _privateConstructorUsedError; // List<Post>? comments,
// List<Post>? replies,
  List<Actor>? get latestLikes => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
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
      int? likes,
      String? liveUrl,
      String? title,
      LiveMeeting? liveMeeting,
      int viewCount,
      bool isLikedByMe,
      bool isCommentedOnByMe,
      bool isByMe,
      bool isBookmarkedByMe,
      Actor? createdBy,
      List<Actor>? latestLikes,
      List<String>? tags,
      int? commentCount,
      String? createdAt});

  $GroupCopyWith<$Res>? get group;
  $CommunityCopyWith<$Res>? get community;
  $PollCopyWith<$Res>? get poll;
  $LiveMeetingCopyWith<$Res>? get liveMeeting;
  $ActorCopyWith<$Res>? get createdBy;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? images = freezed,
    Object? videos = freezed,
    Object? videoThumbnails = freezed,
    Object? documents = freezed,
    Object? document = freezed,
    Object? groupId = freezed,
    Object? tabId = freezed,
    Object? group = freezed,
    Object? community = freezed,
    Object? documentName = freezed,
    Object? poll = freezed,
    Object? likes = freezed,
    Object? liveUrl = freezed,
    Object? title = freezed,
    Object? liveMeeting = freezed,
    Object? viewCount = freezed,
    Object? isLikedByMe = freezed,
    Object? isCommentedOnByMe = freezed,
    Object? isByMe = freezed,
    Object? isBookmarkedByMe = freezed,
    Object? createdBy = freezed,
    Object? latestLikes = freezed,
    Object? tags = freezed,
    Object? commentCount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoThumbnails: videoThumbnails == freezed
          ? _value.videoThumbnails
          : videoThumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Documents>?,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      tabId: tabId == freezed
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      community: community == freezed
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      documentName: documentName == freezed
          ? _value.documentName
          : documentName // ignore: cast_nullable_to_non_nullable
              as String?,
      poll: poll == freezed
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      liveUrl: liveUrl == freezed
          ? _value.liveUrl
          : liveUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      liveMeeting: liveMeeting == freezed
          ? _value.liveMeeting
          : liveMeeting // ignore: cast_nullable_to_non_nullable
              as LiveMeeting?,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikedByMe: isLikedByMe == freezed
          ? _value.isLikedByMe
          : isLikedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isCommentedOnByMe: isCommentedOnByMe == freezed
          ? _value.isCommentedOnByMe
          : isCommentedOnByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isByMe: isByMe == freezed
          ? _value.isByMe
          : isByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isBookmarkedByMe: isBookmarkedByMe == freezed
          ? _value.isBookmarkedByMe
          : isBookmarkedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as Actor?,
      latestLikes: latestLikes == freezed
          ? _value.latestLikes
          : latestLikes // ignore: cast_nullable_to_non_nullable
              as List<Actor>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value));
    });
  }

  @override
  $CommunityCopyWith<$Res>? get community {
    if (_value.community == null) {
      return null;
    }

    return $CommunityCopyWith<$Res>(_value.community!, (value) {
      return _then(_value.copyWith(community: value));
    });
  }

  @override
  $PollCopyWith<$Res>? get poll {
    if (_value.poll == null) {
      return null;
    }

    return $PollCopyWith<$Res>(_value.poll!, (value) {
      return _then(_value.copyWith(poll: value));
    });
  }

  @override
  $LiveMeetingCopyWith<$Res>? get liveMeeting {
    if (_value.liveMeeting == null) {
      return null;
    }

    return $LiveMeetingCopyWith<$Res>(_value.liveMeeting!, (value) {
      return _then(_value.copyWith(liveMeeting: value));
    });
  }

  @override
  $ActorCopyWith<$Res>? get createdBy {
    if (_value.createdBy == null) {
      return null;
    }

    return $ActorCopyWith<$Res>(_value.createdBy!, (value) {
      return _then(_value.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
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
      int? likes,
      String? liveUrl,
      String? title,
      LiveMeeting? liveMeeting,
      int viewCount,
      bool isLikedByMe,
      bool isCommentedOnByMe,
      bool isByMe,
      bool isBookmarkedByMe,
      Actor? createdBy,
      List<Actor>? latestLikes,
      List<String>? tags,
      int? commentCount,
      String? createdAt});

  @override
  $GroupCopyWith<$Res>? get group;
  @override
  $CommunityCopyWith<$Res>? get community;
  @override
  $PollCopyWith<$Res>? get poll;
  @override
  $LiveMeetingCopyWith<$Res>? get liveMeeting;
  @override
  $ActorCopyWith<$Res>? get createdBy;
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? images = freezed,
    Object? videos = freezed,
    Object? videoThumbnails = freezed,
    Object? documents = freezed,
    Object? document = freezed,
    Object? groupId = freezed,
    Object? tabId = freezed,
    Object? group = freezed,
    Object? community = freezed,
    Object? documentName = freezed,
    Object? poll = freezed,
    Object? likes = freezed,
    Object? liveUrl = freezed,
    Object? title = freezed,
    Object? liveMeeting = freezed,
    Object? viewCount = freezed,
    Object? isLikedByMe = freezed,
    Object? isCommentedOnByMe = freezed,
    Object? isByMe = freezed,
    Object? isBookmarkedByMe = freezed,
    Object? createdBy = freezed,
    Object? latestLikes = freezed,
    Object? tags = freezed,
    Object? commentCount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Post(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videos: videos == freezed
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoThumbnails: videoThumbnails == freezed
          ? _value.videoThumbnails
          : videoThumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Documents>?,
      document: document == freezed
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String?,
      groupId: groupId == freezed
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
      tabId: tabId == freezed
          ? _value.tabId
          : tabId // ignore: cast_nullable_to_non_nullable
              as String?,
      group: group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      community: community == freezed
          ? _value.community
          : community // ignore: cast_nullable_to_non_nullable
              as Community?,
      documentName: documentName == freezed
          ? _value.documentName
          : documentName // ignore: cast_nullable_to_non_nullable
              as String?,
      poll: poll == freezed
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as Poll?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      liveUrl: liveUrl == freezed
          ? _value.liveUrl
          : liveUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      liveMeeting: liveMeeting == freezed
          ? _value.liveMeeting
          : liveMeeting // ignore: cast_nullable_to_non_nullable
              as LiveMeeting?,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLikedByMe: isLikedByMe == freezed
          ? _value.isLikedByMe
          : isLikedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isCommentedOnByMe: isCommentedOnByMe == freezed
          ? _value.isCommentedOnByMe
          : isCommentedOnByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isByMe: isByMe == freezed
          ? _value.isByMe
          : isByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isBookmarkedByMe: isBookmarkedByMe == freezed
          ? _value.isBookmarkedByMe
          : isBookmarkedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as Actor?,
      latestLikes: latestLikes == freezed
          ? _value.latestLikes
          : latestLikes // ignore: cast_nullable_to_non_nullable
              as List<Actor>?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(
      {this.id,
      this.description,
      this.images,
      this.videos,
      this.videoThumbnails,
      this.documents,
      this.document,
      this.groupId,
      this.tabId,
      this.group,
      this.community,
      this.documentName,
      this.poll,
      this.likes = 0,
      this.liveUrl,
      this.title,
      this.liveMeeting,
      this.viewCount = 0,
      this.isLikedByMe = false,
      this.isCommentedOnByMe = false,
      this.isByMe = false,
      this.isBookmarkedByMe = false,
      this.createdBy,
      this.latestLikes,
      this.tags,
      this.commentCount,
      this.createdAt});

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String? id;
  @override
  final String? description;
  @override
  final List<String>? images;
  @override
  final List<String>? videos;
  @override
  final List<String>? videoThumbnails;
  @override
  final List<Documents>? documents;
  @override
  final String? document;
  @override
  final String? groupId;
  @override
  final String? tabId;
  @override
  final Group? group;
  @override
  final Community? community;
  @override
  final String? documentName;
  @override
  final Poll? poll;
  @JsonKey()
  @override
  final int? likes;
  @override
  final String? liveUrl;
  @override
  final String? title;
  @override

  /// Child? Tweet
  final LiveMeeting? liveMeeting;
  @JsonKey()
  @override
  final int viewCount;
  @JsonKey()
  @override
  final bool isLikedByMe;
  @JsonKey()
  @override
  final bool isCommentedOnByMe;
  @JsonKey()
  @override
  final bool isByMe;
  @JsonKey()
  @override
  final bool isBookmarkedByMe;
  @override
  final Actor? createdBy;
  @override // List<Post>? comments,
// List<Post>? replies,
  final List<Actor>? latestLikes;
  @override
  final List<String>? tags;
  @override
  final int? commentCount;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Post(id: $id, description: $description, images: $images, videos: $videos, videoThumbnails: $videoThumbnails, documents: $documents, document: $document, groupId: $groupId, tabId: $tabId, group: $group, community: $community, documentName: $documentName, poll: $poll, likes: $likes, liveUrl: $liveUrl, title: $title, liveMeeting: $liveMeeting, viewCount: $viewCount, isLikedByMe: $isLikedByMe, isCommentedOnByMe: $isCommentedOnByMe, isByMe: $isByMe, isBookmarkedByMe: $isBookmarkedByMe, createdBy: $createdBy, latestLikes: $latestLikes, tags: $tags, commentCount: $commentCount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Post &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            const DeepCollectionEquality()
                .equals(other.videoThumbnails, videoThumbnails) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.document, document) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            const DeepCollectionEquality().equals(other.tabId, tabId) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(other.community, community) &&
            const DeepCollectionEquality()
                .equals(other.documentName, documentName) &&
            const DeepCollectionEquality().equals(other.poll, poll) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.liveUrl, liveUrl) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.liveMeeting, liveMeeting) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality()
                .equals(other.isLikedByMe, isLikedByMe) &&
            const DeepCollectionEquality()
                .equals(other.isCommentedOnByMe, isCommentedOnByMe) &&
            const DeepCollectionEquality().equals(other.isByMe, isByMe) &&
            const DeepCollectionEquality()
                .equals(other.isBookmarkedByMe, isBookmarkedByMe) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality()
                .equals(other.latestLikes, latestLikes) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(images),
        const DeepCollectionEquality().hash(videos),
        const DeepCollectionEquality().hash(videoThumbnails),
        const DeepCollectionEquality().hash(documents),
        const DeepCollectionEquality().hash(document),
        const DeepCollectionEquality().hash(groupId),
        const DeepCollectionEquality().hash(tabId),
        const DeepCollectionEquality().hash(group),
        const DeepCollectionEquality().hash(community),
        const DeepCollectionEquality().hash(documentName),
        const DeepCollectionEquality().hash(poll),
        const DeepCollectionEquality().hash(likes),
        const DeepCollectionEquality().hash(liveUrl),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(liveMeeting),
        const DeepCollectionEquality().hash(viewCount),
        const DeepCollectionEquality().hash(isLikedByMe),
        const DeepCollectionEquality().hash(isCommentedOnByMe),
        const DeepCollectionEquality().hash(isByMe),
        const DeepCollectionEquality().hash(isBookmarkedByMe),
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(latestLikes),
        const DeepCollectionEquality().hash(tags),
        const DeepCollectionEquality().hash(commentCount),
        const DeepCollectionEquality().hash(createdAt)
      ]);

  @JsonKey(ignore: true)
  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {String? id,
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
      int? likes,
      String? liveUrl,
      String? title,
      LiveMeeting? liveMeeting,
      int viewCount,
      bool isLikedByMe,
      bool isCommentedOnByMe,
      bool isByMe,
      bool isBookmarkedByMe,
      Actor? createdBy,
      List<Actor>? latestLikes,
      List<String>? tags,
      int? commentCount,
      String? createdAt}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String? get id;
  @override
  String? get description;
  @override
  List<String>? get images;
  @override
  List<String>? get videos;
  @override
  List<String>? get videoThumbnails;
  @override
  List<Documents>? get documents;
  @override
  String? get document;
  @override
  String? get groupId;
  @override
  String? get tabId;
  @override
  Group? get group;
  @override
  Community? get community;
  @override
  String? get documentName;
  @override
  Poll? get poll;
  @override
  int? get likes;
  @override
  String? get liveUrl;
  @override
  String? get title;
  @override

  /// Child? Tweet
  LiveMeeting? get liveMeeting;
  @override
  int get viewCount;
  @override
  bool get isLikedByMe;
  @override
  bool get isCommentedOnByMe;
  @override
  bool get isByMe;
  @override
  bool get isBookmarkedByMe;
  @override
  Actor? get createdBy;
  @override // List<Post>? comments,
// List<Post>? replies,
  List<Actor>? get latestLikes;
  @override
  List<String>? get tags;
  @override
  int? get commentCount;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$PostCopyWith<_Post> get copyWith => throw _privateConstructorUsedError;
}

Poll _$PollFromJson(Map<String, dynamic> json) {
  return _Poll.fromJson(json);
}

/// @nodoc
class _$PollTearOff {
  const _$PollTearOff();

  _Poll call(
      {bool isQuiz = false,
      bool isQuestion = false,
      int? duration,
      String? title,
      String? endTime,
      bool? isExpired,
      String? instructions,
      List<Question>? questions,
      List<Submissions>? myAnswer,
      List<Answers>? answers,
      bool isAnsweredByMe = false,
      Map<String, double>? votes,
      int? voteCount,
      int answersCount = 0,
      MySelection? selection}) {
    return _Poll(
      isQuiz: isQuiz,
      isQuestion: isQuestion,
      duration: duration,
      title: title,
      endTime: endTime,
      isExpired: isExpired,
      instructions: instructions,
      questions: questions,
      myAnswer: myAnswer,
      answers: answers,
      isAnsweredByMe: isAnsweredByMe,
      votes: votes,
      voteCount: voteCount,
      answersCount: answersCount,
      selection: selection,
    );
  }

  Poll fromJson(Map<String, Object?> json) {
    return Poll.fromJson(json);
  }
}

/// @nodoc
const $Poll = _$PollTearOff();

/// @nodoc
mixin _$Poll {
  bool get isQuiz => throw _privateConstructorUsedError;
  bool get isQuestion => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  bool? get isExpired => throw _privateConstructorUsedError;
  String? get instructions => throw _privateConstructorUsedError;
  List<Question>? get questions => throw _privateConstructorUsedError;
  List<Submissions>? get myAnswer => throw _privateConstructorUsedError;
  List<Answers>? get answers => throw _privateConstructorUsedError;
  bool get isAnsweredByMe => throw _privateConstructorUsedError;
  Map<String, double>? get votes => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  int get answersCount => throw _privateConstructorUsedError;
  MySelection? get selection => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res>;
  $Res call(
      {bool isQuiz,
      bool isQuestion,
      int? duration,
      String? title,
      String? endTime,
      bool? isExpired,
      String? instructions,
      List<Question>? questions,
      List<Submissions>? myAnswer,
      List<Answers>? answers,
      bool isAnsweredByMe,
      Map<String, double>? votes,
      int? voteCount,
      int answersCount,
      MySelection? selection});

  $MySelectionCopyWith<$Res>? get selection;
}

/// @nodoc
class _$PollCopyWithImpl<$Res> implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  final Poll _value;
  // ignore: unused_field
  final $Res Function(Poll) _then;

  @override
  $Res call({
    Object? isQuiz = freezed,
    Object? isQuestion = freezed,
    Object? duration = freezed,
    Object? title = freezed,
    Object? endTime = freezed,
    Object? isExpired = freezed,
    Object? instructions = freezed,
    Object? questions = freezed,
    Object? myAnswer = freezed,
    Object? answers = freezed,
    Object? isAnsweredByMe = freezed,
    Object? votes = freezed,
    Object? voteCount = freezed,
    Object? answersCount = freezed,
    Object? selection = freezed,
  }) {
    return _then(_value.copyWith(
      isQuiz: isQuiz == freezed
          ? _value.isQuiz
          : isQuiz // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuestion: isQuestion == freezed
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      myAnswer: myAnswer == freezed
          ? _value.myAnswer
          : myAnswer // ignore: cast_nullable_to_non_nullable
              as List<Submissions>?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>?,
      isAnsweredByMe: isAnsweredByMe == freezed
          ? _value.isAnsweredByMe
          : isAnsweredByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      answersCount: answersCount == freezed
          ? _value.answersCount
          : answersCount // ignore: cast_nullable_to_non_nullable
              as int,
      selection: selection == freezed
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as MySelection?,
    ));
  }

  @override
  $MySelectionCopyWith<$Res>? get selection {
    if (_value.selection == null) {
      return null;
    }

    return $MySelectionCopyWith<$Res>(_value.selection!, (value) {
      return _then(_value.copyWith(selection: value));
    });
  }
}

/// @nodoc
abstract class _$PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$PollCopyWith(_Poll value, $Res Function(_Poll) then) =
      __$PollCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isQuiz,
      bool isQuestion,
      int? duration,
      String? title,
      String? endTime,
      bool? isExpired,
      String? instructions,
      List<Question>? questions,
      List<Submissions>? myAnswer,
      List<Answers>? answers,
      bool isAnsweredByMe,
      Map<String, double>? votes,
      int? voteCount,
      int answersCount,
      MySelection? selection});

  @override
  $MySelectionCopyWith<$Res>? get selection;
}

/// @nodoc
class __$PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res>
    implements _$PollCopyWith<$Res> {
  __$PollCopyWithImpl(_Poll _value, $Res Function(_Poll) _then)
      : super(_value, (v) => _then(v as _Poll));

  @override
  _Poll get _value => super._value as _Poll;

  @override
  $Res call({
    Object? isQuiz = freezed,
    Object? isQuestion = freezed,
    Object? duration = freezed,
    Object? title = freezed,
    Object? endTime = freezed,
    Object? isExpired = freezed,
    Object? instructions = freezed,
    Object? questions = freezed,
    Object? myAnswer = freezed,
    Object? answers = freezed,
    Object? isAnsweredByMe = freezed,
    Object? votes = freezed,
    Object? voteCount = freezed,
    Object? answersCount = freezed,
    Object? selection = freezed,
  }) {
    return _then(_Poll(
      isQuiz: isQuiz == freezed
          ? _value.isQuiz
          : isQuiz // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuestion: isQuestion == freezed
          ? _value.isQuestion
          : isQuestion // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpired: isExpired == freezed
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      myAnswer: myAnswer == freezed
          ? _value.myAnswer
          : myAnswer // ignore: cast_nullable_to_non_nullable
              as List<Submissions>?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answers>?,
      isAnsweredByMe: isAnsweredByMe == freezed
          ? _value.isAnsweredByMe
          : isAnsweredByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      answersCount: answersCount == freezed
          ? _value.answersCount
          : answersCount // ignore: cast_nullable_to_non_nullable
              as int,
      selection: selection == freezed
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as MySelection?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Poll implements _Poll {
  const _$_Poll(
      {this.isQuiz = false,
      this.isQuestion = false,
      this.duration,
      this.title,
      this.endTime,
      this.isExpired,
      this.instructions,
      this.questions,
      this.myAnswer,
      this.answers,
      this.isAnsweredByMe = false,
      this.votes,
      this.voteCount,
      this.answersCount = 0,
      this.selection});

  factory _$_Poll.fromJson(Map<String, dynamic> json) => _$$_PollFromJson(json);

  @JsonKey()
  @override
  final bool isQuiz;
  @JsonKey()
  @override
  final bool isQuestion;
  @override
  final int? duration;
  @override
  final String? title;
  @override
  final String? endTime;
  @override
  final bool? isExpired;
  @override
  final String? instructions;
  @override
  final List<Question>? questions;
  @override
  final List<Submissions>? myAnswer;
  @override
  final List<Answers>? answers;
  @JsonKey()
  @override
  final bool isAnsweredByMe;
  @override
  final Map<String, double>? votes;
  @override
  final int? voteCount;
  @JsonKey()
  @override
  final int answersCount;
  @override
  final MySelection? selection;

  @override
  String toString() {
    return 'Poll(isQuiz: $isQuiz, isQuestion: $isQuestion, duration: $duration, title: $title, endTime: $endTime, isExpired: $isExpired, instructions: $instructions, questions: $questions, myAnswer: $myAnswer, answers: $answers, isAnsweredByMe: $isAnsweredByMe, votes: $votes, voteCount: $voteCount, answersCount: $answersCount, selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Poll &&
            const DeepCollectionEquality().equals(other.isQuiz, isQuiz) &&
            const DeepCollectionEquality()
                .equals(other.isQuestion, isQuestion) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.isExpired, isExpired) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            const DeepCollectionEquality().equals(other.myAnswer, myAnswer) &&
            const DeepCollectionEquality().equals(other.answers, answers) &&
            const DeepCollectionEquality()
                .equals(other.isAnsweredByMe, isAnsweredByMe) &&
            const DeepCollectionEquality().equals(other.votes, votes) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality()
                .equals(other.answersCount, answersCount) &&
            const DeepCollectionEquality().equals(other.selection, selection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isQuiz),
      const DeepCollectionEquality().hash(isQuestion),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(isExpired),
      const DeepCollectionEquality().hash(instructions),
      const DeepCollectionEquality().hash(questions),
      const DeepCollectionEquality().hash(myAnswer),
      const DeepCollectionEquality().hash(answers),
      const DeepCollectionEquality().hash(isAnsweredByMe),
      const DeepCollectionEquality().hash(votes),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(answersCount),
      const DeepCollectionEquality().hash(selection));

  @JsonKey(ignore: true)
  @override
  _$PollCopyWith<_Poll> get copyWith =>
      __$PollCopyWithImpl<_Poll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollToJson(this);
  }
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {bool isQuiz,
      bool isQuestion,
      int? duration,
      String? title,
      String? endTime,
      bool? isExpired,
      String? instructions,
      List<Question>? questions,
      List<Submissions>? myAnswer,
      List<Answers>? answers,
      bool isAnsweredByMe,
      Map<String, double>? votes,
      int? voteCount,
      int answersCount,
      MySelection? selection}) = _$_Poll;

  factory _Poll.fromJson(Map<String, dynamic> json) = _$_Poll.fromJson;

  @override
  bool get isQuiz;
  @override
  bool get isQuestion;
  @override
  int? get duration;
  @override
  String? get title;
  @override
  String? get endTime;
  @override
  bool? get isExpired;
  @override
  String? get instructions;
  @override
  List<Question>? get questions;
  @override
  List<Submissions>? get myAnswer;
  @override
  List<Answers>? get answers;
  @override
  bool get isAnsweredByMe;
  @override
  Map<String, double>? get votes;
  @override
  int? get voteCount;
  @override
  int get answersCount;
  @override
  MySelection? get selection;
  @override
  @JsonKey(ignore: true)
  _$PollCopyWith<_Poll> get copyWith => throw _privateConstructorUsedError;
}

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
class _$QuestionTearOff {
  const _$QuestionTearOff();

  _Question call(
      {String? id,
      List<String>? options,
      String? statement,
      String? answer,
      int? answerIndex,
      String? selectedAnswer,
      Actor? user}) {
    return _Question(
      id: id,
      options: options,
      statement: statement,
      answer: answer,
      answerIndex: answerIndex,
      selectedAnswer: selectedAnswer,
      user: user,
    );
  }

  Question fromJson(Map<String, Object?> json) {
    return Question.fromJson(json);
  }
}

/// @nodoc
const $Question = _$QuestionTearOff();

/// @nodoc
mixin _$Question {
  String? get id => throw _privateConstructorUsedError;
  List<String>? get options => throw _privateConstructorUsedError;
  String? get statement => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  int? get answerIndex => throw _privateConstructorUsedError;
  String? get selectedAnswer => throw _privateConstructorUsedError;
  Actor? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      List<String>? options,
      String? statement,
      String? answer,
      int? answerIndex,
      String? selectedAnswer,
      Actor? user});

  $ActorCopyWith<$Res>? get user;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? options = freezed,
    Object? statement = freezed,
    Object? answer = freezed,
    Object? answerIndex = freezed,
    Object? selectedAnswer = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      statement: statement == freezed
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      answerIndex: answerIndex == freezed
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Actor?,
    ));
  }

  @override
  $ActorCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ActorCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      List<String>? options,
      String? statement,
      String? answer,
      int? answerIndex,
      String? selectedAnswer,
      Actor? user});

  @override
  $ActorCopyWith<$Res>? get user;
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? options = freezed,
    Object? statement = freezed,
    Object? answer = freezed,
    Object? answerIndex = freezed,
    Object? selectedAnswer = freezed,
    Object? user = freezed,
  }) {
    return _then(_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      statement: statement == freezed
          ? _value.statement
          : statement // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      answerIndex: answerIndex == freezed
          ? _value.answerIndex
          : answerIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedAnswer: selectedAnswer == freezed
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Actor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {this.id,
      this.options,
      this.statement,
      this.answer,
      this.answerIndex,
      this.selectedAnswer,
      this.user});

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final String? id;
  @override
  final List<String>? options;
  @override
  final String? statement;
  @override
  final String? answer;
  @override
  final int? answerIndex;
  @override
  final String? selectedAnswer;
  @override
  final Actor? user;

  @override
  String toString() {
    return 'Question(id: $id, options: $options, statement: $statement, answer: $answer, answerIndex: $answerIndex, selectedAnswer: $selectedAnswer, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(other.statement, statement) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality()
                .equals(other.answerIndex, answerIndex) &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswer, selectedAnswer) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(statement),
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(answerIndex),
      const DeepCollectionEquality().hash(selectedAnswer),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {String? id,
      List<String>? options,
      String? statement,
      String? answer,
      int? answerIndex,
      String? selectedAnswer,
      Actor? user}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String? get id;
  @override
  List<String>? get options;
  @override
  String? get statement;
  @override
  String? get answer;
  @override
  int? get answerIndex;
  @override
  String? get selectedAnswer;
  @override
  Actor? get user;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

Submissions _$SubmissionsFromJson(Map<String, dynamic> json) {
  return _Submissions.fromJson(json);
}

/// @nodoc
class _$SubmissionsTearOff {
  const _$SubmissionsTearOff();

  _Submissions call({String? id, String? question, String? option}) {
    return _Submissions(
      id: id,
      question: question,
      option: option,
    );
  }

  Submissions fromJson(Map<String, Object?> json) {
    return Submissions.fromJson(json);
  }
}

/// @nodoc
const $Submissions = _$SubmissionsTearOff();

/// @nodoc
mixin _$Submissions {
  String? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get option => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionsCopyWith<Submissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionsCopyWith<$Res> {
  factory $SubmissionsCopyWith(
          Submissions value, $Res Function(Submissions) then) =
      _$SubmissionsCopyWithImpl<$Res>;
  $Res call({String? id, String? question, String? option});
}

/// @nodoc
class _$SubmissionsCopyWithImpl<$Res> implements $SubmissionsCopyWith<$Res> {
  _$SubmissionsCopyWithImpl(this._value, this._then);

  final Submissions _value;
  // ignore: unused_field
  final $Res Function(Submissions) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SubmissionsCopyWith<$Res>
    implements $SubmissionsCopyWith<$Res> {
  factory _$SubmissionsCopyWith(
          _Submissions value, $Res Function(_Submissions) then) =
      __$SubmissionsCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? question, String? option});
}

/// @nodoc
class __$SubmissionsCopyWithImpl<$Res> extends _$SubmissionsCopyWithImpl<$Res>
    implements _$SubmissionsCopyWith<$Res> {
  __$SubmissionsCopyWithImpl(
      _Submissions _value, $Res Function(_Submissions) _then)
      : super(_value, (v) => _then(v as _Submissions));

  @override
  _Submissions get _value => super._value as _Submissions;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? option = freezed,
  }) {
    return _then(_Submissions(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      option: option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Submissions implements _Submissions {
  const _$_Submissions({this.id, this.question, this.option});

  factory _$_Submissions.fromJson(Map<String, dynamic> json) =>
      _$$_SubmissionsFromJson(json);

  @override
  final String? id;
  @override
  final String? question;
  @override
  final String? option;

  @override
  String toString() {
    return 'Submissions(id: $id, question: $question, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Submissions &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.option, option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(option));

  @JsonKey(ignore: true)
  @override
  _$SubmissionsCopyWith<_Submissions> get copyWith =>
      __$SubmissionsCopyWithImpl<_Submissions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubmissionsToJson(this);
  }
}

abstract class _Submissions implements Submissions {
  const factory _Submissions({String? id, String? question, String? option}) =
      _$_Submissions;

  factory _Submissions.fromJson(Map<String, dynamic> json) =
      _$_Submissions.fromJson;

  @override
  String? get id;
  @override
  String? get question;
  @override
  String? get option;
  @override
  @JsonKey(ignore: true)
  _$SubmissionsCopyWith<_Submissions> get copyWith =>
      throw _privateConstructorUsedError;
}

Answers _$AnswersFromJson(Map<String, dynamic> json) {
  return _Answers.fromJson(json);
}

/// @nodoc
class _$AnswersTearOff {
  const _$AnswersTearOff();

  _Answers call({Actor? user, List<Submissions>? submissions}) {
    return _Answers(
      user: user,
      submissions: submissions,
    );
  }

  Answers fromJson(Map<String, Object?> json) {
    return Answers.fromJson(json);
  }
}

/// @nodoc
const $Answers = _$AnswersTearOff();

/// @nodoc
mixin _$Answers {
  Actor? get user => throw _privateConstructorUsedError;
  List<Submissions>? get submissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswersCopyWith<Answers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswersCopyWith<$Res> {
  factory $AnswersCopyWith(Answers value, $Res Function(Answers) then) =
      _$AnswersCopyWithImpl<$Res>;
  $Res call({Actor? user, List<Submissions>? submissions});

  $ActorCopyWith<$Res>? get user;
}

/// @nodoc
class _$AnswersCopyWithImpl<$Res> implements $AnswersCopyWith<$Res> {
  _$AnswersCopyWithImpl(this._value, this._then);

  final Answers _value;
  // ignore: unused_field
  final $Res Function(Answers) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? submissions = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Actor?,
      submissions: submissions == freezed
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Submissions>?,
    ));
  }

  @override
  $ActorCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $ActorCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AnswersCopyWith<$Res> implements $AnswersCopyWith<$Res> {
  factory _$AnswersCopyWith(_Answers value, $Res Function(_Answers) then) =
      __$AnswersCopyWithImpl<$Res>;
  @override
  $Res call({Actor? user, List<Submissions>? submissions});

  @override
  $ActorCopyWith<$Res>? get user;
}

/// @nodoc
class __$AnswersCopyWithImpl<$Res> extends _$AnswersCopyWithImpl<$Res>
    implements _$AnswersCopyWith<$Res> {
  __$AnswersCopyWithImpl(_Answers _value, $Res Function(_Answers) _then)
      : super(_value, (v) => _then(v as _Answers));

  @override
  _Answers get _value => super._value as _Answers;

  @override
  $Res call({
    Object? user = freezed,
    Object? submissions = freezed,
  }) {
    return _then(_Answers(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Actor?,
      submissions: submissions == freezed
          ? _value.submissions
          : submissions // ignore: cast_nullable_to_non_nullable
              as List<Submissions>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Answers implements _Answers {
  const _$_Answers({this.user, this.submissions});

  factory _$_Answers.fromJson(Map<String, dynamic> json) =>
      _$$_AnswersFromJson(json);

  @override
  final Actor? user;
  @override
  final List<Submissions>? submissions;

  @override
  String toString() {
    return 'Answers(user: $user, submissions: $submissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Answers &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.submissions, submissions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(submissions));

  @JsonKey(ignore: true)
  @override
  _$AnswersCopyWith<_Answers> get copyWith =>
      __$AnswersCopyWithImpl<_Answers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswersToJson(this);
  }
}

abstract class _Answers implements Answers {
  const factory _Answers({Actor? user, List<Submissions>? submissions}) =
      _$_Answers;

  factory _Answers.fromJson(Map<String, dynamic> json) = _$_Answers.fromJson;

  @override
  Actor? get user;
  @override
  List<Submissions>? get submissions;
  @override
  @JsonKey(ignore: true)
  _$AnswersCopyWith<_Answers> get copyWith =>
      throw _privateConstructorUsedError;
}

MySelection _$MySelectionFromJson(Map<String, dynamic> json) {
  return _MySelection.fromJson(json);
}

/// @nodoc
class _$MySelectionTearOff {
  const _$MySelectionTearOff();

  _MySelection call(
      {String? choice, bool isSelected = false, bool loading = false}) {
    return _MySelection(
      choice: choice,
      isSelected: isSelected,
      loading: loading,
    );
  }

  MySelection fromJson(Map<String, Object?> json) {
    return MySelection.fromJson(json);
  }
}

/// @nodoc
const $MySelection = _$MySelectionTearOff();

/// @nodoc
mixin _$MySelection {
  String? get choice => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MySelectionCopyWith<MySelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySelectionCopyWith<$Res> {
  factory $MySelectionCopyWith(
          MySelection value, $Res Function(MySelection) then) =
      _$MySelectionCopyWithImpl<$Res>;
  $Res call({String? choice, bool isSelected, bool loading});
}

/// @nodoc
class _$MySelectionCopyWithImpl<$Res> implements $MySelectionCopyWith<$Res> {
  _$MySelectionCopyWithImpl(this._value, this._then);

  final MySelection _value;
  // ignore: unused_field
  final $Res Function(MySelection) _then;

  @override
  $Res call({
    Object? choice = freezed,
    Object? isSelected = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MySelectionCopyWith<$Res>
    implements $MySelectionCopyWith<$Res> {
  factory _$MySelectionCopyWith(
          _MySelection value, $Res Function(_MySelection) then) =
      __$MySelectionCopyWithImpl<$Res>;
  @override
  $Res call({String? choice, bool isSelected, bool loading});
}

/// @nodoc
class __$MySelectionCopyWithImpl<$Res> extends _$MySelectionCopyWithImpl<$Res>
    implements _$MySelectionCopyWith<$Res> {
  __$MySelectionCopyWithImpl(
      _MySelection _value, $Res Function(_MySelection) _then)
      : super(_value, (v) => _then(v as _MySelection));

  @override
  _MySelection get _value => super._value as _MySelection;

  @override
  $Res call({
    Object? choice = freezed,
    Object? isSelected = freezed,
    Object? loading = freezed,
  }) {
    return _then(_MySelection(
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MySelection implements _MySelection {
  const _$_MySelection(
      {this.choice, this.isSelected = false, this.loading = false});

  factory _$_MySelection.fromJson(Map<String, dynamic> json) =>
      _$$_MySelectionFromJson(json);

  @override
  final String? choice;
  @JsonKey()
  @override
  final bool isSelected;
  @JsonKey()
  @override
  final bool loading;

  @override
  String toString() {
    return 'MySelection(choice: $choice, isSelected: $isSelected, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MySelection &&
            const DeepCollectionEquality().equals(other.choice, choice) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(choice),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$MySelectionCopyWith<_MySelection> get copyWith =>
      __$MySelectionCopyWithImpl<_MySelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MySelectionToJson(this);
  }
}

abstract class _MySelection implements MySelection {
  const factory _MySelection({String? choice, bool isSelected, bool loading}) =
      _$_MySelection;

  factory _MySelection.fromJson(Map<String, dynamic> json) =
      _$_MySelection.fromJson;

  @override
  String? get choice;
  @override
  bool get isSelected;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$MySelectionCopyWith<_MySelection> get copyWith =>
      throw _privateConstructorUsedError;
}

LiveMeeting _$LiveMeetingFromJson(Map<String, dynamic> json) {
  return _LiveMeeting.fromJson(json);
}

/// @nodoc
class _$LiveMeetingTearOff {
  const _$LiveMeetingTearOff();

  _LiveMeeting call(
      {String? id,
      String? meetingId,
      dynamic isLive = false,
      dynamic isEnded = true,
      List<String>? recordings,
      String? webUrl}) {
    return _LiveMeeting(
      id: id,
      meetingId: meetingId,
      isLive: isLive,
      isEnded: isEnded,
      recordings: recordings,
      webUrl: webUrl,
    );
  }

  LiveMeeting fromJson(Map<String, Object?> json) {
    return LiveMeeting.fromJson(json);
  }
}

/// @nodoc
const $LiveMeeting = _$LiveMeetingTearOff();

/// @nodoc
mixin _$LiveMeeting {
  String? get id => throw _privateConstructorUsedError;
  String? get meetingId => throw _privateConstructorUsedError;
  dynamic get isLive => throw _privateConstructorUsedError;
  dynamic get isEnded => throw _privateConstructorUsedError;
  List<String>? get recordings => throw _privateConstructorUsedError;
  String? get webUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveMeetingCopyWith<LiveMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveMeetingCopyWith<$Res> {
  factory $LiveMeetingCopyWith(
          LiveMeeting value, $Res Function(LiveMeeting) then) =
      _$LiveMeetingCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? meetingId,
      dynamic isLive,
      dynamic isEnded,
      List<String>? recordings,
      String? webUrl});
}

/// @nodoc
class _$LiveMeetingCopyWithImpl<$Res> implements $LiveMeetingCopyWith<$Res> {
  _$LiveMeetingCopyWithImpl(this._value, this._then);

  final LiveMeeting _value;
  // ignore: unused_field
  final $Res Function(LiveMeeting) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? meetingId = freezed,
    Object? isLive = freezed,
    Object? isEnded = freezed,
    Object? recordings = freezed,
    Object? webUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingId: meetingId == freezed
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isEnded: isEnded == freezed
          ? _value.isEnded
          : isEnded // ignore: cast_nullable_to_non_nullable
              as dynamic,
      recordings: recordings == freezed
          ? _value.recordings
          : recordings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      webUrl: webUrl == freezed
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LiveMeetingCopyWith<$Res>
    implements $LiveMeetingCopyWith<$Res> {
  factory _$LiveMeetingCopyWith(
          _LiveMeeting value, $Res Function(_LiveMeeting) then) =
      __$LiveMeetingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? meetingId,
      dynamic isLive,
      dynamic isEnded,
      List<String>? recordings,
      String? webUrl});
}

/// @nodoc
class __$LiveMeetingCopyWithImpl<$Res> extends _$LiveMeetingCopyWithImpl<$Res>
    implements _$LiveMeetingCopyWith<$Res> {
  __$LiveMeetingCopyWithImpl(
      _LiveMeeting _value, $Res Function(_LiveMeeting) _then)
      : super(_value, (v) => _then(v as _LiveMeeting));

  @override
  _LiveMeeting get _value => super._value as _LiveMeeting;

  @override
  $Res call({
    Object? id = freezed,
    Object? meetingId = freezed,
    Object? isLive = freezed,
    Object? isEnded = freezed,
    Object? recordings = freezed,
    Object? webUrl = freezed,
  }) {
    return _then(_LiveMeeting(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingId: meetingId == freezed
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLive: isLive == freezed ? _value.isLive : isLive,
      isEnded: isEnded == freezed ? _value.isEnded : isEnded,
      recordings: recordings == freezed
          ? _value.recordings
          : recordings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      webUrl: webUrl == freezed
          ? _value.webUrl
          : webUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveMeeting implements _LiveMeeting {
  const _$_LiveMeeting(
      {this.id,
      this.meetingId,
      this.isLive = false,
      this.isEnded = true,
      this.recordings,
      this.webUrl});

  factory _$_LiveMeeting.fromJson(Map<String, dynamic> json) =>
      _$$_LiveMeetingFromJson(json);

  @override
  final String? id;
  @override
  final String? meetingId;
  @JsonKey()
  @override
  final dynamic isLive;
  @JsonKey()
  @override
  final dynamic isEnded;
  @override
  final List<String>? recordings;
  @override
  final String? webUrl;

  @override
  String toString() {
    return 'LiveMeeting(id: $id, meetingId: $meetingId, isLive: $isLive, isEnded: $isEnded, recordings: $recordings, webUrl: $webUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LiveMeeting &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.meetingId, meetingId) &&
            const DeepCollectionEquality().equals(other.isLive, isLive) &&
            const DeepCollectionEquality().equals(other.isEnded, isEnded) &&
            const DeepCollectionEquality()
                .equals(other.recordings, recordings) &&
            const DeepCollectionEquality().equals(other.webUrl, webUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(meetingId),
      const DeepCollectionEquality().hash(isLive),
      const DeepCollectionEquality().hash(isEnded),
      const DeepCollectionEquality().hash(recordings),
      const DeepCollectionEquality().hash(webUrl));

  @JsonKey(ignore: true)
  @override
  _$LiveMeetingCopyWith<_LiveMeeting> get copyWith =>
      __$LiveMeetingCopyWithImpl<_LiveMeeting>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveMeetingToJson(this);
  }
}

abstract class _LiveMeeting implements LiveMeeting {
  const factory _LiveMeeting(
      {String? id,
      String? meetingId,
      dynamic isLive,
      dynamic isEnded,
      List<String>? recordings,
      String? webUrl}) = _$_LiveMeeting;

  factory _LiveMeeting.fromJson(Map<String, dynamic> json) =
      _$_LiveMeeting.fromJson;

  @override
  String? get id;
  @override
  String? get meetingId;
  @override
  dynamic get isLive;
  @override
  dynamic get isEnded;
  @override
  List<String>? get recordings;
  @override
  String? get webUrl;
  @override
  @JsonKey(ignore: true)
  _$LiveMeetingCopyWith<_LiveMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}

Documents _$DocumentsFromJson(Map<String, dynamic> json) {
  return _Documents.fromJson(json);
}

/// @nodoc
class _$DocumentsTearOff {
  const _$DocumentsTearOff();

  _Documents call({String? id, String? location, String? name}) {
    return _Documents(
      id: id,
      location: location,
      name: name,
    );
  }

  Documents fromJson(Map<String, Object?> json) {
    return Documents.fromJson(json);
  }
}

/// @nodoc
const $Documents = _$DocumentsTearOff();

/// @nodoc
mixin _$Documents {
  String? get id => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentsCopyWith<Documents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsCopyWith<$Res> {
  factory $DocumentsCopyWith(Documents value, $Res Function(Documents) then) =
      _$DocumentsCopyWithImpl<$Res>;
  $Res call({String? id, String? location, String? name});
}

/// @nodoc
class _$DocumentsCopyWithImpl<$Res> implements $DocumentsCopyWith<$Res> {
  _$DocumentsCopyWithImpl(this._value, this._then);

  final Documents _value;
  // ignore: unused_field
  final $Res Function(Documents) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DocumentsCopyWith<$Res> implements $DocumentsCopyWith<$Res> {
  factory _$DocumentsCopyWith(
          _Documents value, $Res Function(_Documents) then) =
      __$DocumentsCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? location, String? name});
}

/// @nodoc
class __$DocumentsCopyWithImpl<$Res> extends _$DocumentsCopyWithImpl<$Res>
    implements _$DocumentsCopyWith<$Res> {
  __$DocumentsCopyWithImpl(_Documents _value, $Res Function(_Documents) _then)
      : super(_value, (v) => _then(v as _Documents));

  @override
  _Documents get _value => super._value as _Documents;

  @override
  $Res call({
    Object? id = freezed,
    Object? location = freezed,
    Object? name = freezed,
  }) {
    return _then(_Documents(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Documents implements _Documents {
  const _$_Documents({this.id, this.location, this.name});

  factory _$_Documents.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentsFromJson(json);

  @override
  final String? id;
  @override
  final String? location;
  @override
  final String? name;

  @override
  String toString() {
    return 'Documents(id: $id, location: $location, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Documents &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$DocumentsCopyWith<_Documents> get copyWith =>
      __$DocumentsCopyWithImpl<_Documents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentsToJson(this);
  }
}

abstract class _Documents implements Documents {
  const factory _Documents({String? id, String? location, String? name}) =
      _$_Documents;

  factory _Documents.fromJson(Map<String, dynamic> json) =
      _$_Documents.fromJson;

  @override
  String? get id;
  @override
  String? get location;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$DocumentsCopyWith<_Documents> get copyWith =>
      throw _privateConstructorUsedError;
}
