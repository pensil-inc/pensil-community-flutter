import 'package:rxdart/rxdart.dart';

// @visibleForTesting

/// Class to manage activities.
///
/// This is only used internally within `SectionBloc`.
class SectionManager<Post> {
  final Map<String, BehaviorSubject<List<Post>>> _controllers = {};

  /// Init controller for given feedGroup.
  void init(String feedGroup) =>
      _controllers[feedGroup] = BehaviorSubject<List<Post>>();

  /// Retrieve with feedGroup the corresponding StreamController from the map
  /// of controllers.
  BehaviorSubject<List<Post>>? _getController(String feedGroup) =>
      _controllers[feedGroup];

  /// Convert the Stream of activities to a List of activities.
  List<Post>? getActivities(String feedGroup) =>
      _getController(feedGroup)?.valueOrNull;

  /// Retrieve Stream of activities with feedGroup.
  Stream<List<Post>>? getStream(String feedGroup) =>
      _getController(feedGroup)?.stream;

  /// Clear activities for a given feedGroup.
  void clearActivities(String feedGroup) {
    _getController(feedGroup)!.value = [];
  }

  void addAllActivities(String feedGroup, List<Post> activities) {
    _getController(feedGroup)!.value = activities;
  }

  /// Clear all controllers.
  void clearAllActivities(List<String> feedGroups) {
    feedGroups.forEach(init);
  }

  /// Close all controllers.
  void close() {
    _controllers.forEach((key, value) {
      value.close();
    });
  }

  /// Check if controller is not empty for given feedGroup.
  bool hasValue(String feedGroup) =>
      _getController(feedGroup)?.hasValue != null;

  /// Add a list of activities to the correct controller based on feedGroup.
  void add(String feedGroup, List<Post> activities) {
    if (hasValue(feedGroup)) {
      _getController(feedGroup)!.add(activities);
    }
  }

  /// Update the correct controller with given activities based on feedGroup.
  void update(String feedGroup, List<Post> activities) {
    if (hasValue(feedGroup)) {
      _getController(feedGroup)!.value = activities;
    }
  }

  /// Add an error event to the Stream based on feedGroup.
  void addError(String feedGroup, Object e, StackTrace stk) {
    if (hasValue(feedGroup)) {
      _getController(feedGroup)!.addError(e, stk);
    }
  }
}
