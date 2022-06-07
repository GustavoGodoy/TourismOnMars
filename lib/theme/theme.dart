import 'package:flutter/material.dart';

const primarySwatchColor = Colors.blueGrey;
const buttonTextColor = Colors.white;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: primarySwatchColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      onPrimary: buttonTextColor,
    ),
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(color: Colors.black),
  ),
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
  ),
);
