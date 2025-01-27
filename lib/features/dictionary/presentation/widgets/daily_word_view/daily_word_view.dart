import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import 'daily_word_card_grid.dart';
import 'daily_word_view_top_bar.dart';

class DailyWordView extends StatelessWidget {
  const DailyWordView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: Assets.images.backgrounds.darkMainDictBg.provider(),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DailyWordViewTopBar(),
          Divider(height: 32, thickness: 2),
          Expanded(child: DailyWordCardGrid()),
        ],
      ),
    );
  }
}
