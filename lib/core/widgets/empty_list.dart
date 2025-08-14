import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/text_styles.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    super.key,
    required this.image,
    required this.description,
  });

  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          fit: BoxFit.scaleDown,
          height: 200.h,
          width: 200.w,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          description,
          style: bodyTextStyle,
        ),
      ],
    );
  }
}
