import 'package:bloc/bloc.dart';

import '../../domain/entities/dictionary_state/dictionary_state.dart';

class DictionaryCubit extends Cubit<DictionaryState> {
  DictionaryCubit() : super(DictionaryState(focusedDate: DateTime.now()));

  void updateState({
    DateTime? focusedDate,
  }) =>
      emit(
        state.copyWith(
          focusedDate: focusedDate ?? state.focusedDate,
        ),
      );
}
