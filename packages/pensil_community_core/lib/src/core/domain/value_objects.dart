import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:pensil_community_core/src/core/domain/errors.dart';
import 'package:pensil_community_core/src/core/domain/value_failures.dart';
import 'package:pensil_community_core/src/core/domain/value_validators.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit =>
      value.fold(left, (r) => right(unit));

  bool isValid() => value.isRight();

  @override
  // ignore: avoid_renaming_method_parameters
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class Name extends ValueObject<String> {
  factory Name(String input) => Name._(validateStringIsNotEmpty(input));
  const Name._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
