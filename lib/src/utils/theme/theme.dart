// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dog_final/src/utils/theme/widget_themes/elevated_buttons_theme.dart';
import 'package:dog_final/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:dog_final/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:dog_final/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      outlinedButtonTheme: tOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: tElevatedButtonsTheme.lightElevatedButtonTheme,
      inputDecorationTheme: tTextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      outlinedButtonTheme: tOutlinedButtonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: tElevatedButtonsTheme.darkElevatedButtonTheme,
      inputDecorationTheme: tTextFormFieldTheme.darkInputDecorationTheme);
}
