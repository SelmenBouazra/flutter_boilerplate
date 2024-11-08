
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/core/theme/text_styles.dart';
import 'package:flutter_boilerplate/core/theme/text_theme.dart';

import 'color.dart';

ThemeData appTheme = ThemeData(
  fontFamily: fontFamily,
  primaryColor: primary,
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: primaryColor05,
    secondary: secondary,
    onSecondary:Colors.white,
    error: red,
    onError: red,
    surface: white,
    onSurface: primary,
    secondaryContainer: white,
    inverseSurface: black,
  ),
  scaffoldBackgroundColor: white,
  textTheme: textTheme,
);
