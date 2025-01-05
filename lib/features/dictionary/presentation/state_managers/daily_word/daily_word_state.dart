part of 'daily_word_cubit.dart';

@freezed
class DailyWordState with _$DailyWordState {
  const DailyWordState._();

  const factory DailyWordState.initial() = _Initial;
  const factory DailyWordState.loading() = _Loading;
  const factory DailyWordState.success(List<DictionaryItem> data) = _Data;
  const factory DailyWordState.error(Failure failure) = _Error;

  bool get isInit => maybeWhen(initial: () => true, orElse: () => false);
  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);
  bool get isSuccess => maybeMap(success: (_) => true, orElse: () => false);
  bool get isError => maybeWhen(error: (_) => true, orElse: () => false);

  List<DictionaryItem>? get data =>
      maybeWhen(success: (data) => data, orElse: () => null);
}
