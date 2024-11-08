import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class InputTextFiled extends StatefulWidget {
  const InputTextFiled({
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
    this.borderColor = Colors.black,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.isPasswordField = false,
    this.onChanged,
    this.border,
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
  final InputBorder? border;

  @override
  State<InputTextFiled> createState() => _InputTextFiledState();
}

class _InputTextFiledState extends State<InputTextFiled> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = widget.isPasswordField;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: passwordVisible,
      controller: widget.controller,
      minLines: widget.linesNumber,
      maxLines: widget.linesNumber,
      readOnly: widget.readOnly,
      enabled: widget.enabled,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      style: textFiledTextStyle,
      decoration: InputDecoration(
        errorMaxLines: 3,
        hintText: widget.textFieldHint,
        hintStyle: hintTextStyle,
        prefixIcon: widget.prefixIcon,
        alignLabelWithHint: true,
        border: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
        ),
        enabledBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
        ),
        focusedBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
        ),
        disabledBorder: widget.border ?? UnderlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
        ),
        errorBorder: widget.border ?? UnderlineInputBorder(
          borderSide: const BorderSide(color: red),
        ),
        focusedErrorBorder: widget.border ?? UnderlineInputBorder(
          borderSide: const BorderSide(color: red),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: !widget.isPasswordField
              ? widget.suffixIcon
              : IconButton(
                  onPressed: () {
                    setState(
                      () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                  icon: Icon(
                    passwordVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 18.w,
                    color: empty,
                  ),
                ),
        ),
        filled: true,
        fillColor: widget.backgroundColor,
        isCollapsed: true,
        contentPadding: EdgeInsets.all(10.sp),
        errorStyle: validationTextStyle,
      ),
      onTap: () => widget.onTap?.call(),
      onChanged: (text) => widget.onChanged?.call(text),
    );
  }
}
