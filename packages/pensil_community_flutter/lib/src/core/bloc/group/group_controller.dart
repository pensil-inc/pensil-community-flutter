import 'package:pensil_community_core/pensil_community_core.dart';
import 'package:rxdart/rxdart.dart';

// @visibleForTesting

/// Class to manage [Group].
///
/// This is only used internally within `GroupBloc`.
class GroupManager<Section> {
  final Map<String, BehaviorSubject<List<Section>>> _controllers = {};

  /// Init controller for given `groupId`.
  void init(String groupId) =>
      _controllers[groupId] = BehaviorSubject<List<Section>>();

  /// Retrieve with groupId the corresponding StreamController from the map
  /// of controllers.
  BehaviorSubject<List<Section>>? _getController(String groupId) =>
      _controllers[groupId];

  /// Convert the Stream of [Section] to a List of [Section].
  List<Section>? getSection(String groupId) =>
      _getController(groupId)?.valueOrNull;

  /// Retrieve Stream of [Section] .
  Stream<List<Section>>? getStream(String groupId) =>
      _getController(groupId)?.stream;

  /// Clear Section for a given community.
  void clearSection(String groupId) {
    _getController(groupId)!.value = [];
  }

  void addAllSections(String groupId, List<Section> sections) {
    _getController(groupId)!.value = sections;
  }

  /// Clear all controllers.
  void clearAllSections(List<String> feedGroups) {
    feedGroups.forEach(init);
  }

  /// Close all controllers.
  void close() {
    _controllers.forEach((key, value) {
      value.close();
    });
  }

  /// Check if controller is not empty for given groupId.
  bool hasValue(String groupId) => _getController(groupId)?.hasValue != null;

  /// Add a list of Section to the correct controller based on groupId.
  void add(String groupId, List<Section> sections) {
    if (hasValue(groupId)) {
      _getController(groupId)!.add(sections);
    }
  }

  /// Update the correct controller with given Section based on groupId.
  void update(String groupId, List<Section> sections) {
    if (hasValue(groupId)) {
      _getController(groupId)!.value = sections;
    }
  }

  /// Add an error event to the Stream based on groupId.
  void addError(String groupId, Object e, StackTrace stk) {
    if (hasValue(groupId)) {
      _getController(groupId)!.addError(e, stk);
    }
  }
}
