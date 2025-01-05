import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/sizing_constants.dart';
import '../../state_managers/daily_word/daily_word_cubit.dart';
import 'daily_word_card_item.dart';

class DailyWordCardGrid extends StatelessWidget {
  const DailyWordCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyWordCubit, DailyWordState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: state.maybeWhen(
          success: (data) => data.isEmpty
              ? const DailyWordCardEmpty(
                  key: ValueKey('DailyWordCardGrid-empty'),
                )
              : GridView.builder(
                  key: const ValueKey('DailyWordCardGrid-success'),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 480,
                    childAspectRatio: 1.8,
                    crossAxisSpacing: SizingConstants.homeBentoPadding,
                    mainAxisSpacing: SizingConstants.homeBentoPadding,
                  ),
                  itemBuilder: (context, index) => DailyWordCardItem(
                    dictionaryItem: data[index],
                  ),
                  itemCount: data.length,
                ),
          error: (failure) => const DailyWordCardError(
            key: ValueKey('DailyWordCardGrid-error'),
          ),
          orElse: () => GridView.builder(
            key: const ValueKey('DailyWordCardGrid - orElse'),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 480,
              childAspectRatio: 1.8,
              crossAxisSpacing: SizingConstants.homeBentoPadding,
              mainAxisSpacing: SizingConstants.homeBentoPadding,
            ),
            itemBuilder: (context, index) => const DailyWordCardLoading(),
            itemCount: state.data?.length ?? 12,
          ),
        ),
      ),
    );
  }
}
