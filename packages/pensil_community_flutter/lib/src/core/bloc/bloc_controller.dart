import 'package:rxdart/rxdart.dart';

class ListController<T> {
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

class ValueController<T> {
  late BehaviorSubject<T?> _controllers;

  ValueController() {
    _controllers = BehaviorSubject<T>();
  }

  /// Retrieve controller
  BehaviorSubject<T?> get _getController => _controllers;

  /// Convert the Stream of [T] to a [T].
  T? get getValue => _getController.valueOrNull!;

  /// Retrieve Stream of [T] .
  Stream<T?> get getStream => _getController.stream;

  /// Clear controller.
  /// Set value to null
  void clear() {
    _getController.value = null;
  }

  void addAll(String id, T? list) {
    _getController.value = list;
  }

  /// Check if controller is not empty
  bool get hasValue => _getController.hasValue;

  /// Add a value of T to the controller.
  void add(T value) {
    _getController.add(value);
  }

  /// Update the controller with given T .
  void update(T value) {
    if (hasValue) {
      _getController.value = value;
    }
  }

  /// Add an error event to the Stream.
  void addError(String e, [StackTrace? stk]) {
    _getController.addError(e, stk);
  }

  /// Close controller.
  void close() {
    _controllers.close();
  }
}
