import 'package:flutter/cupertino.dart';

class L10n {
  L10n();

  static final all = [
    const Locale('fr'),
    const Locale('ro'),
    const Locale('en'),
  ];
}

String getCurrentLanguage(BuildContext context) {
  Locale currentLocale = Localizations.localeOf(context);

  return currentLocale.languageCode.toUpperCase();
}
