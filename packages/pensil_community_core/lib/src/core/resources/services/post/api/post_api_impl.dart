part of 'post_api.dart';

@Injectable(as: PostApi)
class PostApiImpl implements PostApi {
  @override
  ResultOrException<Post> addCommentToPost(
    Post requestModel, {
    Option<List<File>?>? files,
    dynamic postType,
    UploadFileProgress? onSendProgress,
  }) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Post> toggleLikePost(String id, bool isLike) async {
    try {
      final _dioClient = getIt<DioClient>();
      final response =
          await _dioClient.post(Endpoint.toggleLikePost(id, isLike));
      final map = _dioClient.getJsonBody(response);
      final post = Post.fromJson(map['post']);
      return Right(post);
    } on PensilException catch (error) {
      return Left(error);
    }
  }

  @override
  ResultOrException<Post> addPost(Post post) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<bool> addPostBookmark(String postId) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Map<String, dynamic>> deleteById(String endpoint) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Post> getPostDetail(String postId) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Post> getPostLikes(String postId) {
    throw UnimplementedError();
  }

  @override
  ResultOrException<Post> voteOnPoll(String postId, String option) {
    throw UnimplementedError();
  }
}
