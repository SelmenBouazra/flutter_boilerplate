import 'package:flutter/cupertino.dart';

class L10n {
  L10n();
  static final all = [
    const Locale('fr'),
    const Locale('nl'),
    const Locale('en'),
  ];
}

String getLocalisationValue(Map<String, dynamic>? map, BuildContext context) {
  Locale currentLocale = Localizations.localeOf(context);

  if (map != null) {
    String? value = map[currentLocale.languageCode.toUpperCase()];

    if (value != null && value.isNotEmpty) {
      return value.stripHtml();
    }
  }

  return map?['FR'] ?? "";
}

String getCurrentLanguage( BuildContext context) {
  Locale currentLocale = Localizations.localeOf(context);

  return currentLocale.languageCode.toUpperCase();
}

extension StringExtension on String {
  String stripHtml() => replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '');
}

Map carName = {'FR': 'Voiture', 'EN': 'Car', 'NL': 'Auto'};
Map motoName = {'FR': 'Moto', 'EN': 'Motorcycle', 'NL': 'Motorfiets'};
Map bicycleName = {'FR': 'Bicyclette', 'EN': 'Bicycle', 'NL': 'Fiets'};

String transformVehicleType(String currentLanguage, List<String>? vehicleType) {
  String newPhrase = "";
  vehicleType?.forEach((vehicleName) {
    if (vehicleName.toLowerCase().contains("voiture")) {
      newPhrase += carName[currentLanguage] + ", ";
    } else if (vehicleName.toLowerCase().contains("moto")) {
      newPhrase += motoName[currentLanguage] + ", ";
    } else if (vehicleName.toLowerCase().contains("bicyclette")) {
      newPhrase += bicycleName[currentLanguage] + ", ";
    } else {
      newPhrase += "$vehicleName, ";
    }
  });

  return vehicleType != null
      ? newPhrase.substring(0, newPhrase.length - 2)
      : "";
}
