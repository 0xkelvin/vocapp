import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/sizing_constants.dart';
import '../../../../core/services/services_mixin.dart';
import '../../../dictionary/domain/entities/dictionary_state/dictionary_state.dart';
import '../../../dictionary/presentation/state_managers/daily_word/daily_word_cubit.dart';
import '../../../dictionary/presentation/state_managers/dictionary_cubit.dart';
import '../widgets/home_main_view.dart';
import '../widgets/home_side_bar.dart';
import '../widgets/home_state_manager_provider.dart';

@RoutePage()
class HomeScreen extends StatelessWidget with ServicesMixin {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeStateManagerProvider(
      child: BlocListener<DictionaryCubit, DictionaryState>(
        listenWhen: (previous, current) =>
            previous.focusedDate != current.focusedDate,
        listener: (context, state) => context.read<DailyWordCubit>().getData(
              state.focusedDate,
            ),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(SizingConstants.homeBentoPadding),
            child: Row(
              children: [
                /* Main View */
                const Expanded(child: HomeMainView()),
                const SizedBox(width: SizingConstants.homeBentoPadding),

                /* Side Bar */
                SizedBox(
                  width: 296,
                  height: 1.sh,
                  child: const HomeSideBar(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
