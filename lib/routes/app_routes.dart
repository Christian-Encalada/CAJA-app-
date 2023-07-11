import 'package:auto_route/auto_route.dart';
import 'package:caja_flutter/routes/app_routes.gr.dart';
import 'app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page)
      ];
}