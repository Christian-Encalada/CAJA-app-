import 'package:auto_route/auto_route.dart';
import 'package:caja_flutter/routes/app_routes.gr.dart';
import 'package:caja_flutter/routes/guard/auth_guard.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(path: '/', page: Homepage.page, initial: true),
        AutoRoute(path: '/login', page: LoginRoute.page, keepHistory: false),
        AutoRoute(
            path: '/register', page: RegisterRoute.page, guards: [AuthGuard()]),
        AutoRoute(
            path: '/pepe', page: Pepe.page),

      ];
}
