import 'package:flutter/material.dart';
import 'package:genshin_app/utils/colors.dart';

final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: CustomColor.primaryBackground,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.white,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      subtitle1: TextStyle(color: Colors.white),
      caption: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: CustomColor.primaryBackground,
    ));
