import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/app_config.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/pref_utils.dart';
import 'feature/setting/presentation/bloc/setting_bloc.dart';
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
    return BlocProvider(
      create: (context) => SettingBloc(prefUtils: di.sl<PrefUtils>()),
      child: BlocBuilder<SettingBloc, SettingState>(
        buildWhen: (previous, current) =>
        previous.locale != current.locale,
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(390, 844),
            minTextAdapt: true,
            builder: (BuildContext context, child) {
              return MaterialApp.router(
                title: 'Effia Mobile',
                theme: appTheme,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: state.locale,
                routerConfig: _appRouter.config(),
              );
            },
          );
        },
      ),
    );
  }
}
