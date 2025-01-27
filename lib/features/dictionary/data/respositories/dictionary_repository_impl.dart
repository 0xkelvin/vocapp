import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/helpers/repository_mixin.dart';
import '../../../../core/injection/service_locator.dart';
import '../../domain/entities/dictionary_item/dictionary_item.dart';
import '../../domain/repositories/dictionary_repository.dart';
import '../data_sources/dictionary_data_source.dart';

@LazySingleton(as: DictionaryRepository)
class DictionaryRepositoryImpl
    with RepositoryMixin
    implements DictionaryRepository {
  const DictionaryRepositoryImpl();

  @override
  Future<Either<Failure, List<DictionaryItem>>> getDailyWordList(
    DateTime datetime,
  ) =>
      callDataSource(
        () => getIt<DictionaryDataSource>().getDailyWordList(datetime),
      );
}
