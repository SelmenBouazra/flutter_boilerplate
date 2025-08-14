import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class CustomDropdown<T> extends StatefulWidget {
  final List<T> items;
  final String hint;
  final Color backgroundColor;
  final Widget? prefixIcon;
  final String Function(T) displayField;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;
  final T? firstValue;
  final Color borderColor;
  final bool label;
  final InputBorder? border;

  const CustomDropdown({
    super.key,
    required this.hint,
    required this.items,
    required this.displayField,
    this.prefixIcon,
    required this.onChanged,
    this.borderColor = Colors.black,
    this.validator,
    this.backgroundColor = Colors.white,
    this.firstValue,
    this.label = false, this.border
  });

  @override
  _CustomDropdownState<T> createState() => _CustomDropdownState<T>();
}

class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
  T? _selectedItem;

  @override
  void initState() {
    _selectedItem = (widget.firstValue != null) ? widget.firstValue : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          color: widget.backgroundColor,
          child: DropdownButtonFormField<T>(
            padding: EdgeInsets.all(10.sp),
            value: _selectedItem,
            isExpanded: true,
            icon: const Icon(Icons.keyboard_arrow_down),
            elevation: 16,
            style: const TextStyle(color: Colors.black),
            validator: widget.validator,
            decoration: InputDecoration(
              enabled: false,
              prefixIcon: widget.prefixIcon,
              errorStyle:  bodyTextStyle.copyWith(color: red),

              hintText: !widget.label ?  widget.hint : null,
              hintStyle: bodyTextStyle.copyWith(color: hint),

              label: widget.label ? Text(
                  widget.hint,
                  style: bodyTextStyle.copyWith(color: hint)
              ) : null,
              border: widget.border ?? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(color: widget.borderColor),
              ),
              enabledBorder: widget.border ?? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              focusedBorder: widget.border ?? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              disabledBorder: widget.border ?? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: widget.borderColor),
              ),
              errorBorder: widget.border ?? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: red),
              ),
              focusedErrorBorder: widget.border ?? OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(color: red),
              ),
            ),
            items: widget.items.map((item) {
              return DropdownMenuItem<T>(
                value: item,
                child: Text(
                  widget.displayField(item),
                  style: textFiledTextStyle,
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
              widget.onChanged(value);
            },
          ),
        ),
      ],
    );
  }
}
