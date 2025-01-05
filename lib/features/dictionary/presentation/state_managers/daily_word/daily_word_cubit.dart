import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/injection/service_locator.dart';
import '../../../domain/entities/dictionary_item/dictionary_item.dart';
import '../../../domain/use_cases/get_daily_word_list.dart';

part 'daily_word_state.dart';
part 'daily_word_cubit.freezed.dart';

class DailyWordCubit extends Cubit<DailyWordState> {
  DailyWordCubit() : super(const DailyWordState.initial());

  void getData(DateTime datetime) async {
    emit(const DailyWordState.loading());

    final res = await getIt<GetDailyWordList>().call(datetime);
    emit(
      res.fold(
        (l) => DailyWordState.error(l),
        (r) => DailyWordState.success(r),
      ),
    );
  }
}
