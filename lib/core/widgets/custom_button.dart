import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class CustomButton extends StatefulWidget {
  CustomButton({
    super.key,
    required this.text,
    this.inverseColor = false,
    this.leadingIcon,
    required this.onPressed,
    this.backgroundColor = primary,
    this.textColor = white,
    this.height = 50,
  });

  final String text;
  final bool inverseColor;
  final Widget? leadingIcon;
  final Function onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double height;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    var textColor =
        widget.inverseColor ? widget.backgroundColor : widget.textColor;
    var backgroundColor =
        widget.inverseColor ? widget.textColor : widget.backgroundColor;
    return GestureDetector(
      onTap: () => widget.onPressed(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        height: widget.height.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: textColor, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.leadingIcon != null) widget.leadingIcon!,
            if (widget.leadingIcon != null)
              SizedBox(
                width: 8.w,
              ),
            Text(
              widget.text,
              style: buttonTextStyle.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
