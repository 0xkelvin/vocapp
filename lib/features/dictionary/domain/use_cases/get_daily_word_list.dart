import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/helpers/usecase_template.dart';
import '../entities/dictionary_item/dictionary_item.dart';
import '../repositories/dictionary_repository.dart';

@LazySingleton()
class GetDailyWordList
    extends UseCase<List<DictionaryItem>, DateTime, DictionaryRepository> {
  const GetDailyWordList(this.repository);

  @override
  final DictionaryRepository repository;

  @override
  Future<Either<Failure, List<DictionaryItem>>> call(DateTime params) =>
      repository.getDailyWordList(params);
}
