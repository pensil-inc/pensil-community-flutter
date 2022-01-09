import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc_controller.dart';
import 'package:pensil_community_flutter/src/core/domain/post_action.dart';

class SectionBloc extends BlocBaseClass<SectionClient> {
  SectionBloc({
    required GroupClient groupClient,
    required String sectionId,
    required this.type,
  }) : super(client: groupClient.sectionClient(sectionId), id: sectionId);

  @override
  void initBloc() {
    controller = ListController<Post>();
    controller.init(id);
    isLoadingmore = ValueController<bool>(true);
  }

  final SectionType type;
  String get sectionId => id;

  late ListController<Post> controller;
  late ValueController<bool> isLoadingmore;

  Stream<List<Post>> get feedStream => controller.getStreamById(id)!;

  List<Post>? getPostFeed(String sectionId) =>
      controller.getListById(sectionId);

  Stream<List<Post>>? getPostListStream(String feedGroup) =>
      controller.getStreamById(feedGroup);

  ///  Clear PostFeed for a given `feedGroup`.
  void clearPostFeed(String feedGroup) => controller.clearById(feedGroup);

  ///  Clear all PostFeed for the given `feedGroups`.
  void clearAllPostFeed(List<String> feedGroups) =>
      controller.clearAll(feedGroups);

  void addAllPostFeed(List<Post> posts) =>
      controller.addAllById(sectionId, posts);

  /* POST */

  /// {@template onAddPost}
  ///  Add an Post to the feed in a reactive way
  ///
  /// For example a tweet
  /// ```dart
  /// FeedProvider.of(context).bloc.onAddPost()
  /// ```
  /// {@endtemplate}

  Future<Post?> onAddPost({
    required String feedGroup,
    Map<String, String>? data,
    required String verb,
    required String object,
    String? userId,
  }) async {
    const post = Post();

    final response = await client.addPost(post);
    return response.fold(
      (failure) => null,
      (post) {
        final _PostFeed = getPostFeed(feedGroup) ?? [];

        // ignore: cascade_invocations
        _PostFeed.insert(0, post);

        controller.add(feedGroup, _PostFeed);
        return post;
      },
    );
  }

  /// {@template onAddPost}
  void onPostAction(PostAction action) {
    action.maybeMap(
      orElse: () {
        if (kDebugMode) {
          print(describeEnum(action));
        }
      },
      onLike: (data) async {
        final response =
            await client.toggleLikePost(data.post.id!, !data.post.isLikedByMe);
        response.fold(
          (failure) => null,
          (post) {
            final _PostFeed = getPostFeed(sectionId) ?? [];

            final index =
                _PostFeed.indexWhere((element) => element.id == post.id);
            _PostFeed[index] = post;
            controller.update(post.tabId!, _PostFeed);

            log("Post ${post.isLikedByMe}", name: "SectionBloc");
          },
        );
      },
      onDelete: (data) async {
        // final response = await client.deletePost(data);
        // return response.fold(
        //   (failure) => null,
        //   (post) {
        //     final _PostFeed = getPostFeed(post.feedGroup) ?? [];

        //     // ignore: cascade_invocations
        //     _PostFeed.insert(0, post);

        //     add(post.feedGroup, _PostFeed);
        //     return post;
        //   },
        // );
      },
    );
  }

  bool isRefreshing = false;

  /// Fetch post from server
  Future fetchSectionPost() async {
    if (isRefreshing) {
      return;
    }
    isLoadingmore.add(true);
    isRefreshing = true;
    final response =
        await client.getSectionPaginatedPosts(sectionId: sectionId, type: type);
    response.fold(
      (error) {
        controller.addError(id, error);
        log("REached to page end");
      },
      (list) {
        log("Posts received");
        controller.update(id, list);
      },
    );
    isRefreshing = false;
    isLoadingmore.add(false);
  }
}
