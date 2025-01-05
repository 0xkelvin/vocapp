import 'package:flutter/material.dart';

import '../../../../../core/constants/sizing_constants.dart';
import 'daily_word_card_item.dart';

class DailyWordCardGrid extends StatelessWidget {
  const DailyWordCardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 480,
        childAspectRatio: 1.8,
        crossAxisSpacing: SizingConstants.homeBentoPadding,
        mainAxisSpacing: SizingConstants.homeBentoPadding,
      ),
      itemBuilder: (context, index) => const DailyWordCardItem(),
      itemCount: 16,
    );
  }
}
