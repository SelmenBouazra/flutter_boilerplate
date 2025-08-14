import 'package:auto_route/auto_route.dart';

import '../../injection_container.dart' as di;
import '../utils/pref_utils.dart';
import 'app_router.gr.dart';

class GetInitialRoute extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    PrefUtils prefUtils = di.sl<PrefUtils>();

    if (prefUtils.getToken().isNotEmpty) {
      router.push(const MainAccountManagerRoute());
    } else {
      resolver.next(true);
    }
  }
}
