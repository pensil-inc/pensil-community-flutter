import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_core/src/client/injection/injection.dart';
import 'package:pensil_community_core/src/core/domain/endpoints.dart';
import 'package:pensil_community_core/src/core/domain/typdef.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';
import 'package:pensil_community_core/src/core/http/dio_client.dart';
part 'post_api_impl.dart';

abstract class PostApi {
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
