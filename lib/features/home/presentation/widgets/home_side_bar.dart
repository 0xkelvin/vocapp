import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../components/ui/coming_soon_dialog.dart';
import '../../../../components/ui/vocapp_card.dart';
import '../../../../core/constants/sizing_constants.dart';
import '../../../../gen/assets.gen.dart';
import '../../../dictionary/presentation/widgets/side_calendar.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* Account */
        VocappCard(
          onTap: () => showDialog(
            context: context,
            builder: (BuildContext context) => const ComingSoonDialog(),
          ),
          height: SizingConstants.homeAppBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  Assets.images.avatars.avatar1.path,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(child: Text('John Doe')),
              const Icon(
                FontAwesomeIcons.chevronDown,
                size: 12,
              ),
            ],
          ),
        ),
        const SizedBox(height: SizingConstants.homeBentoPadding),

        /* Calendar */
        const SideCalendar(),
      ],
    );
  }
}
