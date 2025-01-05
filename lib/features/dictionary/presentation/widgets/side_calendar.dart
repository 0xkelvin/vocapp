import 'package:dart_helper_utils/dart_helper_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../components/ui/vocapp_card.dart';
import '../../domain/entities/dictionary_state/dictionary_state.dart';
import '../state_managers/dictionary_cubit.dart';

class SideCalendar extends StatelessWidget {
  const SideCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DictionaryCubit, DictionaryState>(
      buildWhen: (previous, current) =>
          previous.focusedDate != current.focusedDate,
      builder: (context, state) => VocappCard(
        child: TableCalendar(
          focusedDay: state.focusedDate,
          currentDay: state.focusedDate,
          firstDay: DateTime(2024),
          lastDay: DateTime(2026),
          availableCalendarFormats: const {CalendarFormat.month: 'Month'},
          headerStyle: const HeaderStyle(
            headerPadding: EdgeInsets.symmetric(vertical: 12),
          ),
          onDaySelected: (selectedDay, focusedDay) => context
              .read<DictionaryCubit>()
              .updateState(focusedDate: selectedDay),
          calendarBuilders: CalendarBuilders(
            headerTitleBuilder: (context, day) => Text(
              DateFormat('MMMM yyyy').format(day),
              style: const TextStyle(
                fontFamily: 'DM Serif Display',
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
