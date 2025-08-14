import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final bool enableBack;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.enableBack = true,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: kToolbarHeight.h,
      leading:  Padding(
        padding: EdgeInsets.only(left: 8.w),
        child: IconButton(
          icon: showBackButton ? Icon(Icons.arrow_back_ios, color: primary, size: 20.sp) : SizedBox.shrink(),
          onPressed: () =>  enableBack ?Navigator.of(context).pop(true) : AutoTabsRouter.of(context).setActiveIndex(0) ,
        ),
      ),
      title: Align(
        alignment: Alignment.topLeft,
        child: Text(title, style: appBarTextStyle),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
