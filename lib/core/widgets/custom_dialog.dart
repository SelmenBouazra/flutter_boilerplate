import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../theme/color.dart';
import '../theme/text_size.dart';
import '../theme/text_styles.dart';
import 'custom_button.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String message;
  final String icon;
  final Function onTap;
  final Color titleColor;
  final bool showAlertIcon;
  final Widget? bodyWidget;

  const CustomDialog({
    super.key,
    this.title = "Information",
    required this.message,
    this.icon = "assets/icons/close_icon.svg",
    required this.onTap,
    this.bodyWidget,
    this.titleColor = red,
    this.showAlertIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: 12.h,
            right: 12.w,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(icon),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(appPadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15.w),
                Text(
                  title,
                  style: subTitleTextStyle,
                ),
                SizedBox(height: 15.w),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (showAlertIcon)
                        SvgPicture.asset("assets/icons/error_icon.svg"),
                      if (showAlertIcon) SizedBox(width: 7.w),
                      SizedBox(
                        width: 230.w,
                        child: Text(
                          message,
                          style: bodyTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                if (bodyWidget != null) bodyWidget!,
                SizedBox(height: 23.w),
                CustomButton(
                    text: S.of(context).close,
                    onPressed: () {
                      context.maybePop();
                    }),
                SizedBox(height: 22.w),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
