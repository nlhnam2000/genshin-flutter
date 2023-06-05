import 'package:flutter/material.dart';
import 'package:genshin_app/utils/colors.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: CustomColor.primaryBackground,
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Colors.white,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      color: Colors.white,
      fontSize: 19,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w500,
    ),
    bodyText2: TextStyle(
      color: Colors.white,
      fontSize: 17,
    ),
    subtitle1: TextStyle(
      color: Colors.white,
      fontSize: 15,
    ),
    caption: TextStyle(color: Colors.white, fontSize: 14),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: CustomColor.primaryBackground,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  sliderTheme: const SliderThemeData(
    showValueIndicator: ShowValueIndicator.always,
  ),
);
