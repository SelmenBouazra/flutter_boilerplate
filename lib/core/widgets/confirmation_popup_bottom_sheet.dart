import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';
import '../theme/text_size.dart';
import '../theme/text_styles.dart';
import '../../generated/l10n.dart';
import 'custom_button.dart';

class ConfirmationPopupBottomSheet extends StatelessWidget {
  final String title;
  final String message;
  final Function onConfirm;

  const ConfirmationPopupBottomSheet(
      {super.key,
      required this.title,
      required this.message,
      required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: appBarTextStyle.copyWith(color: red),
            ),
          ),
          SizedBox(height: 20.h),
          Divider(color: primary.withAlpha(40),),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding),
            child: Column(
              children: [
                Text(
                  message,
                  style: subTitleTextStyle.copyWith(color: black, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 41.h),
                CustomButton(text: S.of(context).confirm, onPressed: onConfirm),
                SizedBox(height: 8.h),
                CustomButton(text: S.of(context).cancel, onPressed: context.maybePop, inverseColor: true,),
                SizedBox(height: 48.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
