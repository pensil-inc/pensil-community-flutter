import 'package:dartz/dartz.dart';
import 'package:pensil_community_core/src/core/exception/exceptions.dart';

typedef ResultOrError<T> = Future<Either<String, T>>;
typedef ResultOrException<T> = Future<Either<PensilException, T>>;
typedef UploadFileProgress = Function(int val, int total);
