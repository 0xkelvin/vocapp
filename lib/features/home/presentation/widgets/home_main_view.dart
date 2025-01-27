import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../components/ui/coming_soon_dialog.dart';
import '../../../../components/ui/vocapp_card.dart';
import '../../../../core/constants/sizing_constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../dictionary/presentation/widgets/daily_word_input.dart';
import '../../../dictionary/presentation/widgets/daily_word_view/daily_word_view.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* App Bar */
        SizedBox(
          height: SizingConstants.homeAppBarHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* App Icon */
              VocappCard(child: Assets.svgs.appIcons.appIcon.svg()),
              const SizedBox(width: 16),

              /* Lang Dropdown */
              VocappCard(
                showBorder: true,
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => const ComingSoonDialog(),
                ),
                child: const Row(
                  children: [
                    Text('🇻🇳 Tiếng Việt'),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(FontAwesomeIcons.chevronDown, size: 12)
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: SizingConstants.homeBentoPadding),

        /* Main View */
        const Expanded(
          child: Column(
            children: [
              /* Search Bar */
              DailyWordInput(),
              SizedBox(height: SizingConstants.homeBentoPadding),

              /* Word List */
              Expanded(child: DailyWordView()),
            ],
          ),
        )
      ],
    );
  }
}
