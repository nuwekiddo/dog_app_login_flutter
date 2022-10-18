// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:dog_final/src/constants/colors.dart';
import 'package:flutter/material.dart';

class tTextFormFieldTheme {
  tTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: tSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: tPrimaryColor,
    floatingLabelStyle: TextStyle(color: tPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: tPrimaryColor),
    ),
  );
}
