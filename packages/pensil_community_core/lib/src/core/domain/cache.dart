// ignore: one_member_abstracts
abstract class Disposable {
  /// Perform cleanup
  Future<void> dispose();
}

/// Generic interface for caching entities.
/// Wraps [Map] interface and provides utilities for manipulating cache.
class Cache<K, S> implements Disposable {
  Cache() {
    _cache = <K, S>{};
  }
  late Map<K, S>? _cache;

  /// Returns values of cache
  Iterable<S> get values => _cache!.values;

  /// Returns key's values of cache
  Iterable<K> get keys => _cache!.keys;

  /// Find one element in cache
  S? findOne(bool Function(S item) predicate) {
    try {
      return values.firstWhere(predicate);
      // ignore: avoid_catching_errors
    } on Error {
      return null;
    }
  }

  /// Find matching items based of [predicate]
  Iterable<S> find(bool Function(S item) predicate) => values.where(predicate);

  /// Returns element with key [key]
  S? operator [](K key) => _cache!.containsKey(key) ? _cache![key] : null;

  /// Sets [item] for [key]
  void operator []=(K key, S item) => _cache![key] = item;

  /// Puts [item] to collection if [key] doesn't exist in cache
  S addIfAbsent(K key, S item) {
    if (!_cache!.containsKey(key)) return _cache![key] = item;
    return item;
  }

  /// Returns true if cache contains [key]
  bool hasKey(K key) => _cache!.containsKey(key);

  /// Returns true if cache contains [value]
  bool hasValue(S value) => _cache!.containsValue(value);

  /// Clear cache
  void invalidate() => _cache!.clear();

  /// Add to cache [value] associated with [key]
  void add(K key, S value) => _cache![key] = value;

  /// Add [Map] to cache.
  void addMap(Map<K, S> mp) => _cache!.addAll(mp);

  /// Remove [key] with associated with it value
  void remove(K key) => _cache!.remove(key);

  /// Remove everything where [predicate] is true
  void removeWhere(bool Function(K key, S value) predicate) =>
      _cache!.removeWhere(predicate);

  /// Loop over elements from cache
  void forEach(void Function(K, S) f) => _cache!.forEach(f);

  /// Take [count] elements from cache. Returns Iterable of cache values
  Iterable<S> take(int count) => values.take(count);

  /// Takes [count] last elements from cache. Returns Iterable of cache values
  Iterable<S> takeLast(int count) =>
      values.toList().sublist(values.length - count);

  /// Get first element
  S get first => _cache!.values.first;

  /// Get last element
  S get last => _cache!.values.last;

  /// Get number of elements from cache
  int get count => _cache!.length;

  /// Returns cache as Map
  Map<K, S> get asMap => _cache!;

  @override
  Future<void> dispose() async {
    _cache!.clear();
  }
}

// // K = String | Section id
// // P = Page | section pageinfo
// // S = List<Post>
// class ListCache<K, P, L extends List> {
//   ListCache([K? k, P? p, L? l]) {
//     cache = Cache<K, Cache<P, L>>();
//     if (k != null && p != null && l != null) {
//       cache.add(k, Cache()..add(p, l));
//     }
//   }

//   late Cache<K, Cache<P, L>> cache;

//   // /// Returns element with key [key]
//   Cache<P, L>? operator [](K key) => cache.hasKey(key) ? cache[key] : null;

//   // /// Sets [item] for [key]
//   void operator []=(K key, Cache<P, L> item) => cache[key] = item;

//   void add(K key, P page, L value) {
//     cache.add(key, Cache()..add(page, value));
//   }

//   void remove(K key) {
//     cache.remove(key);
//   }

//   // bool hasValue(K key) => cache.hasValue(key);

//   bool hasKey(K key) => cache.hasKey(key);

//   void invalidate() {
//     cache.invalidate();
//   }

//   void addAll(K key, P page, L value) {
//     if (hasKey(key)) {
//       // ignore: cast_nullable_to_non_nullable
//       final oldCache = cache[key];
//       final dd = oldCache!.values.toList().first;
//       // ignore: cascade_invocations
//       dd.addAll(value);
//       oldCache[page];
//       // cache
//       cache[key] = oldCache;
//     }
//   }
// }
