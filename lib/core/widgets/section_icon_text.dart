import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SectionIconText extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color? iconColor;
  final TextStyle? textStyle;
  const SectionIconText({
    Key? key,
    required this.iconPath,
    required this.text,
    this.iconColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          iconPath,
          height: 20.h,
          width: 20.w,
          colorFilter: iconColor != null
              ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
              : null,        ),
        SizedBox(width: 15.w),
        Flexible(
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ],
    );
  }
}
