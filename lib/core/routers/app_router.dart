import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';
import 'auto_route_guard.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnBordingRoute.page, initial: true, guards: [GetInitialRoute()]),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: ForgetPasswordEmailStepRoute.page),
    AutoRoute(page: ForgetPasswordOtpStepRoute.page),
    AutoRoute(page: ForgetPasswordChangePasswordRoute.page),

    AutoRoute(page: MainAccountManagerRoute.page, children: [
      AutoRoute(page: LocationRoute.page),
      AutoRoute(page: ParkingRoute.page),
      AutoRoute(page: HistoryRoute.page,),
      AutoRoute(page: SettingRoute.page),
    ]),

    AutoRoute(page: DetailsParkingRoute.page),

    AutoRoute(page: NotificationRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: EditLanguagesRoute.page),

    AutoRoute(page: EditeProfileRoute.page),

    AutoRoute(page: ClaimRoute.page),
    AutoRoute(page: DetailsClaimRoute.page),
    AutoRoute(page: PdfPreviewRoute.page),

    AutoRoute(page: VehicleRoute.page),
    AutoRoute(page: DriverRoute.page),
    AutoRoute(page: AuthPasswordRoute.page),
    AutoRoute(page: ChangePasswordRoute.page),
    AutoRoute(page: ArchiverAccountRoute.page),

  ];
}

