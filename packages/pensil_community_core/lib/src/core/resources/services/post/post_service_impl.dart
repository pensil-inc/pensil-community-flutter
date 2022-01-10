part of 'post_service.dart';

@Injectable(as: PostService)
class PostServiceImpl implements PostService {
  PostServiceImpl(this.postApi);

  final PostApi postApi;

  @override
  ResultOrException<Post> toggleLikePost(String id, bool isLike) =>
      postApi.toggleLikePost(id, isLike);

  @override
  ResultOrException<Post> addCommentToPost(Post requestModel,
      {Option<List<File>?>? files,
      dynamic postType,
      UploadFileProgress? onSendProgress}) {
    throw UnimplementedError();
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
