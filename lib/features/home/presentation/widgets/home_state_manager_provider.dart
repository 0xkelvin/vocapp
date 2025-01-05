import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../dictionary/presentation/state_managers/dictionary_cubit.dart';

class HomeStateManagerProvider extends StatelessWidget {
  const HomeStateManagerProvider({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DictionaryCubit(),
        ),
      ],
      child: child,
    );
  }
}
