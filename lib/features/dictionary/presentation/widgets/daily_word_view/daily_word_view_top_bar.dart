import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../../core/constants/sizing_constants.dart';
import '../../../../../core/theme/vocapp_theme.dart';
import '../../../domain/entities/dictionary_state/dictionary_state.dart';
import '../../state_managers/daily_word/daily_word_cubit.dart';
import '../../state_managers/dictionary_cubit.dart';

class DailyWordViewTopBar extends StatelessWidget {
  const DailyWordViewTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /* Date */
        BlocSelector<DictionaryCubit, DictionaryState, DateTime>(
          selector: (state) => state.focusedDate,
          builder: (context, state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  /* Date */
                  Text(
                    Jiffy.parseFromDateTime(state).format(
                      pattern: 'MMMM do yyyy',
                    ),
                    style: TextStyle(
                      fontFamily: 'DM Serif Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 32,
                      color: context.appColor.neutral100,
                      letterSpacing: -.2,
                    ),
                  ),
                  const SizedBox(width: 16),

                  /* Word Count */
                  BlocSelector<DailyWordCubit, DailyWordState, int>(
                    selector: (state) => state.data?.length ?? 0,
                    builder: (context, state) => state == 0
                        ? const SizedBox()
                        : Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: context.appColor.neutral10,
                            ),
                            child: Text(
                              '$state Words',
                              style: TextStyle(
                                color: context.appColor.secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              Text(
                Jiffy.parseFromDateTime(state).format(pattern: 'EEEE'),
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 24,
                  color: context.appColor.neutral100,
                  letterSpacing: -.2,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: SizingConstants.homeBentoPadding),

        /* Search Field */
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.centerLeft,
              constraints: const BoxConstraints(maxWidth: 400),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: context.appColor.neutral10.withOpacity(0.2),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: context.appColor.neutral10,
                  width: 1.6,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: context.appColor.neutral10,
                    size: 16,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      style: TextStyle(
                        color: context.appColor.neutral10,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Search your words...',
                        hintStyle: TextStyle(
                          color: context.appColor.neutral10,
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
