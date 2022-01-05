part of 'post_service.dart';

@Injectable(as: PostService)
class PostServiceImpl implements PostService {
  PostServiceImpl(this.postApi);

  final PostApi postApi;

  @override
  ResultOrError<Post> toggleLikePost(String id, bool isLike) async {
    final response = await postApi.toggleLikePost(id, isLike);
    return response.fold(
      (l) => Left(l.message),
      Right.new,
    );
  }

  @override
  ResultOrError<Post> addCommentToPost(Post requestModel,
      {Option<List<File>?>? files,
      dynamic postType,
      UploadFileProgress? onSendProgress}) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Post> addPost(Post post) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<bool> addPostBookmark(String postId) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Map<String, dynamic>> deleteById(String endpoint) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Post> getPostDetail(String postId) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Post> getPostLikes(String postId) {
    throw UnimplementedError();
  }

  @override
  ResultOrError<Post> voteOnPoll(String postId, String option) {
    throw UnimplementedError();
  }
}
