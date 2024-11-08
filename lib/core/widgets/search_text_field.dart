import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    required this.controller,
    required this.textFieldHint,
    required this.isRequired,
    this.onTap,
    this.readOnly = false,
    this.enabled = true,
    this.linesNumber = 1,
    this.keyboardType = TextInputType.emailAddress,
    this.isWrong = false,
    this.backgroundColor = Colors.white,
    this.borderColor = empty,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.isPasswordField = false,
    this.onChanged,
  });

  final TextEditingController controller;
  final String textFieldHint;
  final bool isRequired;
  final int linesNumber;
  final Color backgroundColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool isPasswordField;
  final TextInputType keyboardType;
  final bool readOnly;
  final bool enabled;
  final bool isWrong;
  final Color borderColor;
  final Function? onTap;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: TextFormField(
        controller: widget.controller,
        maxLines: 1,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: widget.keyboardType,
        style: textFiledTextStyle,
        decoration: InputDecoration(
          errorMaxLines: 3,
          hintText: widget.textFieldHint,
          hintStyle: hintTextStyle,
          prefixIcon: widget.prefixIcon,
          alignLabelWithHint: true,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: BorderRadius.circular(6.r)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: BorderRadius.circular(6.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: BorderRadius.circular(6.r)),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.borderColor),
              borderRadius: BorderRadius.circular(6.r)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: red),
              borderRadius: BorderRadius.circular(6.r)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: red),
              borderRadius: BorderRadius.circular(6.r)),
          suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.sp),
              child: widget.suffixIcon),
          filled: true,
          fillColor: widget.backgroundColor,
          isCollapsed: true,
          contentPadding: EdgeInsets.all(10.sp),
          errorStyle: validationTextStyle,
        ),
        onTap: () => widget.onTap?.call(),
        onChanged: (text) => widget.onChanged?.call(text),
      ),
    );
  }
}
