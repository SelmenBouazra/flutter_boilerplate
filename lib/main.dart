import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_boilerplate/injection_container.dart' as di;

import 'config/app_config.dart';
import 'core/routers/app_router.dart';
import 'core/theme/app_theme.dart';
import 'generated/l10n.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
  } on Exception catch (e) {
    debugPrint(e.toString());
  }
  await AppConfig.loadConfig(Flavor.dev);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (BuildContext context, child) {
        return MaterialApp.router(
          theme: appTheme,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
