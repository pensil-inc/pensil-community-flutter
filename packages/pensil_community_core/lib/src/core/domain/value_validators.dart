import 'package:dartz/dartz.dart';
import 'package:pensil_community_core/src/core/domain/value_failures.dart';

Either<ValueFailure<String>, String> validateStringIsNotEmpty(String input) =>
    input.isEmpty ? left(ValueFailure.empty(failedValue: input)) : right(input);
