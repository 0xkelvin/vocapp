import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/dictionary_item/dictionary_item.dart';

abstract class DictionaryRepository {
  Future<Either<Failure, List<DictionaryItem>>> getDailyWordList(
    DateTime datetime,
  );
}
