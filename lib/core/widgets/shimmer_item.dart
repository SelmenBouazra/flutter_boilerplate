import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class ShimmerItem extends StatelessWidget {
  const ShimmerItem({super.key, this.height, this.paddingHorizontal = 5, this.paddingVertical = 5, this.borderRadius = 20});

  final double? height;
  final double paddingHorizontal;
  final double paddingVertical;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: paddingHorizontal.h,
        vertical: paddingVertical.w,
      ),
      child: Container(
        height: height,
        padding: EdgeInsets.all(20.h),
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(borderRadius.r),
          boxShadow: const [
            BoxShadow(
              color: empty,
              offset: Offset(-1, 1),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: white,
              highlightColor: empty,
              child: Text(
                "Item Name",
                style: subTitleTextStyle.copyWith(color: black),
              ),
            ),
            SizedBox(height: 5.h),
            Shimmer.fromColors(
              baseColor: white,
              highlightColor: empty,
              child: Text(
                "Item description",
                style: bodyTextStyle,
              ),
            ),
          ],
        ),
      )
    );
  }
}
