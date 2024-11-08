import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/l10n.dart';
import '../theme/color.dart';
import '../theme/text_size.dart';
import '../theme/text_styles.dart';
import 'custom_button.dart';

class SuccessPopupBottomSheet extends StatelessWidget {
  final String title;
  final String message;
  final Function onConfirm;

  const SuccessPopupBottomSheet(
      {super.key,
      required this.title,
      required this.message,
      required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset("assets/icons/success_icon.svg"),
          SizedBox(height: 9.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleTextStyle.copyWith(color: third),
          ),
          SizedBox(height: 24.h),
          Text(
            message,
            textAlign: TextAlign.center,
            style: subTitleTextStyle.copyWith(
                color: black, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 38.h),
          CustomButton(text: S.of(context).confirm, onPressed: onConfirm),
          SizedBox(height: 38.h),
        ],
      ),
    );
  }
}
