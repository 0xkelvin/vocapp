import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router_service.gr.dart';

@LazySingleton()
@AutoRouterConfig()
class RouterService extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: BootRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: RootRoute.page,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
          ],
        ),
      ];
}
