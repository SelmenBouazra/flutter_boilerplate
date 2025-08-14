import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../theme/color.dart';
import '../theme/text_styles.dart';

class CustomSyncfusionDatePicker extends StatelessWidget {
  const CustomSyncfusionDatePicker(
      {super.key,
      this.type = DateRangePickerSelectionMode.range,
      this.onChange,
      this.initialSelectedDates,
      this.maxDate,
      this.minDate,
      this.isDisabled = false,
      this.waitingDays = 0});

  final Function(PickerDateRange)? onChange;
  final DateRangePickerSelectionMode type;
  final List<DateTime>? initialSelectedDates;
  final DateTime? minDate;
  final DateTime? maxDate;
  final bool isDisabled;
  final int waitingDays;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime maxDate = DateTime(now.year + 1, now.month, now.day);

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(
              color: primary,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: SfDateRangePicker(
              minDate: minDate ?? now,
              maxDate: this.maxDate ?? maxDate,
              selectionColor: third,
              view: DateRangePickerView.month,
              initialSelectedDates: initialSelectedDates ?? [],
              headerStyle: DateRangePickerHeaderStyle(
                backgroundColor: Colors.transparent,
                textAlign: TextAlign.center,
                textStyle: subTitleTextStyle,
              ),
              monthCellStyle: DateRangePickerMonthCellStyle(
                textStyle: subTitleTextStyle.copyWith(fontSize: 17.sp),
              ),
              monthViewSettings: DateRangePickerMonthViewSettings(
                firstDayOfWeek: 1,
                dayFormat: 'EEE',
                viewHeaderStyle: DateRangePickerViewHeaderStyle(
                    textStyle:
                        bodyTextStyle.copyWith(color: hint.withAlpha(200))),
              ),
              headerHeight: 40,
              todayHighlightColor: hint,
              selectionShape: DateRangePickerSelectionShape.circle,
              showNavigationArrow: true,
              allowViewNavigation: false,
              backgroundColor: Colors.transparent,
              selectionMode: type,
              selectionTextStyle: TextStyle(color: white),
              onSelectionChanged: (args) {
                if (onChange != null) {
                  onChange!(args.value);
                }
              },
            ),
          ),
        ),
        if (isDisabled)
          Positioned(
            top: 50.h,
            // Adjust the top padding as needed
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.transparent,
            ),
          ),
      ],
    );
  }
}
