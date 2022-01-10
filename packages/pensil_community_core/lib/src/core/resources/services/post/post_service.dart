import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/model/post/post.dart';
import 'package:pensil_community_core/src/core/resources/services/post/api/post_api.dart';

part 'post_service_impl.dart';

abstract class PostService {
  ResultOrException<Post> addPost(Post post) => ResultOrException.error('');

  ResultOrException<Post> getPostLikes(String postId);
  ResultOrException<Map<String, dynamic>> deleteById(String endpoint);
  ResultOrException<bool> addPostBookmark(String postId);
  ResultOrException<Post> toggleLikePost(String id, bool isLike);
  ResultOrException<Post> voteOnPoll(String postId, String option);
  ResultOrException<Post> getPostDetail(String postId);
  ResultOrException<Post> addCommentToPost(
    Post requestModel, {
    Option<List<File>?>? files,
    dynamic postType,
    UploadFileProgress? onSendProgress,
  });
}
