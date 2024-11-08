
import 'package:auto_route/auto_route.dart';

import '../utils/pref_utils.dart';
import 'app_router.gr.dart';

class GetInitialRoute extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    PrefUtils prefUtils = di.sl<PrefUtils>();

    if (prefUtils.getFirstTime()) {
      resolver.next(true);
    } else {
      if (prefUtils.getToken().isNotEmpty) {
        router.push(const MainAccountManagerRoute());
      } else
        router.push(const LoginRoute());
    }
  }
}
