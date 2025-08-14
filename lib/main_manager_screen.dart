import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/profile_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'core/routers/app_router.gr.dart';
import 'core/theme/color.dart';
import 'home_screen.dart';

@RoutePage()
class MainAccountManagerScreen extends StatefulWidget {
  const MainAccountManagerScreen({Key? key}) : super(key: key);

  @override
  State<MainAccountManagerScreen> createState() =>
      _MainAccountManagerScreenState();
}

class _MainAccountManagerScreenState extends State<MainAccountManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          bottomNavigationBar: SafeArea(
            child: Container(
              height: 85.h,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.r),
                  topRight: Radius.circular(18.r),
                ),
                boxShadow: [
                  BoxShadow(
                    color: black.withValues(alpha: 0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.r),
                  topRight: Radius.circular(18.r),
                ),
                child: BottomNavigationBar(
                  backgroundColor: white,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: tabsRouter.activeIndex,
                  selectedItemColor: bottomBarColor,
                  unselectedItemColor: Colors.white,
                  iconSize: 22.h,
                  onTap: (index) {
                    tabsRouter.setActiveIndex(index);
                  },
                  items: [
                    BottomNavigationBarItem(
                      label: "Accueil",
                      icon: SvgPicture.asset('assets/icons/home_icon.svg'),
                      backgroundColor: primary,
                      activeIcon: SvgPicture.asset(
                        'assets/icons/home_icon.svg',
                        colorFilter: const ColorFilter.mode(
                            bottomBarColor, BlendMode.srcIn),
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "Profile",
                      icon: SvgPicture.asset('assets/icons/sync_icon.svg'),
                      backgroundColor: primary,
                      activeIcon: SvgPicture.asset(
                        'assets/icons/sync_icon.svg',
                        colorFilter: const ColorFilter.mode(
                            bottomBarColor, BlendMode.srcIn),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: IndexedStack(
              index: tabsRouter.activeIndex,
              children: const [
                HomeScreen(),
                ProfileScreen(),
              ],
            ),
          ),
        );
      },
    );
  }
}
