// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:voca_notes/features/home/presentation/screens/home_screen.dart'
    as _i2;
import 'package:voca_notes/features/root/presentation/screens/boot_screen.dart'
    as _i1;
import 'package:voca_notes/features/root/presentation/screens/root_screen.dart'
    as _i3;

/// generated route for
/// [_i1.BootScreen]
class BootRoute extends _i4.PageRouteInfo<void> {
  const BootRoute({List<_i4.PageRouteInfo>? children})
      : super(
          BootRoute.name,
          initialChildren: children,
        );

  static const String name = 'BootRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.BootScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeScreen();
    },
  );
}

/// generated route for
/// [_i3.RootScreen]
class RootRoute extends _i4.PageRouteInfo<void> {
  const RootRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.RootScreen();
    },
  );
}
