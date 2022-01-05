import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';
import 'package:pensil_community_core/src/core/resources/services/post/api/post_api.dart';

part 'post_service_impl.dart';

abstract class PostService {
  ResultOrError<Post> addPost(Post post) => ResultOrError.error('');

  ResultOrError<Post> getPostLikes(String postId);
  ResultOrError<Map<String, dynamic>> deleteById(String endpoint);
  ResultOrError<bool> addPostBookmark(String postId);
  ResultOrError<Post> toggleLikePost(String id, bool isLike);
  ResultOrError<Post> voteOnPoll(String postId, String option);
  ResultOrError<Post> getPostDetail(String postId);
  ResultOrError<Post> addCommentToPost(
    Post requestModel, {
    Option<List<File>?>? files,
    dynamic postType,
    UploadFileProgress? onSendProgress,
  });
}
