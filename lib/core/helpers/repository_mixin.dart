import 'package:dartz/dartz.dart';

import '../errors/failures.dart';
import '../services/logger_service.dart';

mixin RepositoryMixin {
  Future<Either<Failure, T>> callDataSource<T>(
    Future<T> Function() call,
  ) async {
    try {
      return Right(await call());
    } catch (e) {
      LoggerService().error(
        e.toString(),
        error: e,
        stackTrace: StackTrace.current,
        type: 'RepositoryCall',
      );
      return Left(
        ClientFailure(message: e.toString()),
      );
    }
  }
}
