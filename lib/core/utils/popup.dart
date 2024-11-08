
import 'package:flutter/material.dart';

import '../widgets/confirmation_popup_bottom_sheet.dart';
import '../widgets/success_popup_bottom_sheet.dart';



void showConfirmPopup(
    BuildContext context, String title, String message, Function onConfirm) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => ConfirmationPopupBottomSheet(
      title: title,
      message: message,
      onConfirm: onConfirm,
    ),
  );
}

void showSuccessPopup(
    BuildContext context, String title, String message, Function onConfirm) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => SuccessPopupBottomSheet(
      title: title,
      message: message,
      onConfirm: onConfirm,
    ),
  );
}
