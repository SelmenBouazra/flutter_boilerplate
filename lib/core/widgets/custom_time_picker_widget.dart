import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as picker;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../core/widgets/input_text_field.dart';
import '../theme/color.dart';

class CustomTimePickerWidget extends StatefulWidget {
  const CustomTimePickerWidget({
    super.key,
    required this.controller,
    required this.hint,
    this.validator,
    required this.onConfirm,
  });

  final TextEditingController controller;
  final String hint;

  final String? Function(String?)? validator;
  final Function(DateTime time) onConfirm;

  @override
  State<CustomTimePickerWidget> createState() => _CustomTimePickerWidgetState();
}

class _CustomTimePickerWidgetState extends State<CustomTimePickerWidget> {
  @override
  Widget build(BuildContext context) {
    return InputTextFiled(
      controller: widget.controller,
      textFieldHint: widget.hint,
      readOnly: true,
      validator: widget.validator,
      prefixIcon: const Icon(Icons.calendar_month),
      onTap: () {
        _showTimePicker(context, widget.controller);
      },
    );
  }

  void _showTimePicker(BuildContext context, TextEditingController controller) {
    //todo("fix local ")
    picker.DatePicker.showTime12hPicker(
      context,
      showTitleActions: true,
      theme: picker.DatePickerTheme(
        cancelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: Colors.grey[700],
        ),
        doneStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: primary,
        ),
        itemStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      onChanged: (date) {},
      onConfirm: (date) {
        setState(() {
          DateTime localDate = date.toLocal();

          String formattedDate =
              DateFormat(' HH:mm', Localizations.localeOf(context).toString())
                  .format(localDate);

          controller.text = formattedDate;
          widget.onConfirm(localDate);
        });
      },
    );
  }
}
