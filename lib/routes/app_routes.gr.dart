// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:caja_flutter/views/login.dart' as _i1;
import 'package:caja_flutter/views/register.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginRoute(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegisterRoute(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginRoute]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegisterRoute]
class RegisterRoute extends _i3.PageRouteInfo<void> {
  const RegisterRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
