import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/services/router/logger_navigator_observer.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoRouter(
        navigatorObservers: () => [LoggerNavigatorObserver()],
      ),
    );
  }
}
