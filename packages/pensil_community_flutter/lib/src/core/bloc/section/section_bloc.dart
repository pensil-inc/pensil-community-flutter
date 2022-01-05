import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:pensil_community_flutter/src/core/bloc/bloc.dart';
import 'package:pensil_community_flutter/src/core/bloc/section/section_controller.dart';
import 'package:pensil_community_flutter/src/core/domain/post_action.dart';

class SectionBloc extends GenericBloc<SectionClient> {
  SectionBloc({required GroupClient groupClient, required this.sectionId})
      : super(client: groupClient.sectionClient(sectionId)) {
    activitiesManager = SectionManager<Post>();
    activitiesManager.init(sectionId);
  }

  final String sectionId;

  /// Manager for activities.
  @visibleForTesting
  late SectionManager<Post> activitiesManager;

  List<Post>? getActivities(String sectionId) =>
      activitiesManager.getActivities(sectionId);

  Stream<List<Post>>? getPostListStream(String feedGroup) =>
      activitiesManager.getStream(feedGroup);

  ///  Clear activities for a given `feedGroup`.
  void clearActivities(String feedGroup) =>
      activitiesManager.clearActivities(feedGroup);

  ///  Clear all activities for the given `feedGroups`.
  void clearAllActivities(List<String> feedGroups) =>
      activitiesManager.clearAllActivities(feedGroups);

  void addAllActivities(List<Post> posts) =>
      activitiesManager.addAllActivities(sectionId, posts);

  /* POST ACTIVITIES */

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
        final _activities = getActivities(feedGroup) ?? [];

        // ignore: cascade_invocations
        _activities.insert(0, post);

        activitiesManager.add(feedGroup, _activities);
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
            final _activities = getActivities(sectionId) ?? [];

            final index =
                _activities.indexWhere((element) => element.id == post.id);
            _activities[index] = post;
            activitiesManager.update(post.tabId!, _activities);

            log("Post ${post.isLikedByMe}", name: "SectionBloc");
          },
        );
      },
      onDelete: (data) async {
        // final response = await client.deletePost(data);
        // return response.fold(
        //   (failure) => null,
        //   (post) {
        //     final _activities = getActivities(post.feedGroup) ?? [];

        //     // ignore: cascade_invocations
        //     _activities.insert(0, post);

        //     activitiesManager.add(post.feedGroup, _activities);
        //     return post;
        //   },
        // );
      },
    );
  }

  void dispose() {
    activitiesManager.close();
  }
}
