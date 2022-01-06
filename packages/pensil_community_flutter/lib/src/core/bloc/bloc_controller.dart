import 'package:rxdart/rxdart.dart';

class BlocController<T> {
  final Map<String, BehaviorSubject<List<T>>> _controllers = {};

  /// Init controller for given `id`.
  void init(String id) => _controllers[id] = BehaviorSubject<List<T>>();

  /// Retrieve with id the corresponding StreamController from the map
  /// of controllers.
  BehaviorSubject<List<T>>? _getController(String id) => _controllers[id];

  /// Convert the Stream of [T] to a List of [T].
  List<T>? getListById(String id) => _getController(id)?.valueOrNull;

  /// Retrieve Stream of [T] .
  Stream<List<T>>? getStreamById(String id) => _getController(id)?.stream;

  /// Clear T for a given community.
  void clearById(String id) {
    _getController(id)!.value = [];
  }

  void addAllById(String id, List<T> list) {
    _getController(id)!.value = list;
  }

  /// Clear all controllers.
  void clearAll(List<String> feedGroups) {
    feedGroups.forEach(init);
  }

  /// Close all controllers.
  void close() {
    _controllers.forEach((key, value) {
      value.close();
    });
  }

  /// Check if controller is not empty for given id.
  bool hasValue(String id) => _getController(id)?.hasValue != null;

  /// Add a list of T to the correct controller based on id.
  void add(String id, List<T> list) {
    if (hasValue(id)) {
      _getController(id)!.add(list);
    }
  }

  /// Update the correct controller with given T based on id.
  void update(String id, List<T> list) {
    if (hasValue(id)) {
      _getController(id)!.value = list;
    }
  }

  /// Add an error event to the Stream based on id.
  void addError(String id, Object e, StackTrace stk) {
    if (hasValue(id)) {
      _getController(id)!.addError(e, stk);
    }
  }
}
