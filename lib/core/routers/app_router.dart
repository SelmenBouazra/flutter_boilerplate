import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import 'app_router.gr.dart';
import 'auto_route_guard.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
          guards: [GetInitialRoute()],
        ),
        AutoRoute(
            page: MainAccountManagerRoute.page,
            initial: false,
            children: [
              AutoRoute(page: HomeRoute.page),
              AutoRoute(page: ProfileRoute.page),
            ]),
      ];
}

final appRouter = AppRouter();
final navigatorKey = GlobalKey<NavigatorState>();
