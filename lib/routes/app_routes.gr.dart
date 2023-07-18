// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:caja_flutter/views/homepage.dart' as _i1;
import 'package:caja_flutter/views/login.dart' as _i2;
import 'package:caja_flutter/views/pepe.dart' as _i3;
import 'package:caja_flutter/views/register.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    Homepage.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Homepage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginRoute(),
      );
    },
    Pepe.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Pepe(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterRoute(),
      );
    },
  };
}

/// generated route for
/// [_i1.Homepage]
class Homepage extends _i5.PageRouteInfo<void> {
  const Homepage({List<_i5.PageRouteInfo>? children})
      : super(
          Homepage.name,
          initialChildren: children,
        );

  static const String name = 'Homepage';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginRoute]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Pepe]
class Pepe extends _i5.PageRouteInfo<void> {
  const Pepe({List<_i5.PageRouteInfo>? children})
      : super(
          Pepe.name,
          initialChildren: children,
        );

  static const String name = 'Pepe';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterRoute]
class RegisterRoute extends _i5.PageRouteInfo<void> {
  const RegisterRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
