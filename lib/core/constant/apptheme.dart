import 'package:flutter/material.dart';
import 'package:students/core/constant/color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    bodyText1: TextStyle(
        fontWeight: FontWeight.bold,
        height: 1.5,
        fontSize: 16,
        color: AppColor.gray),
    bodyText2: TextStyle(
        // fontWeight: FontWeight.bold,
        height: 1.5,
        fontSize: 14,
        color: AppColor.gray),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
    headline2: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    bodyText1: TextStyle(
        fontWeight: FontWeight.bold,
        height: 1.5,
        fontSize: 16,
        color: AppColor.gray),
    bodyText2: TextStyle(
        // fontWeight: FontWeight.bold,
        height: 1.5,
        fontSize: 14,
        color: AppColor.gray),
  ),
  primarySwatch: Colors.blue,
);
