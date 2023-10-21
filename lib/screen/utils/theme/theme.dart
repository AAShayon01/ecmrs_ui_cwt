import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter/material.dart';
class SAppTheme{
SAppTheme._();

static ThemeData lighttheme=ThemeData(
 useMaterial3: true,
 fontFamily:'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: STextTheme.lightTextTheme,
  elevatedButtonTheme: ElevatedButtonThemeData(),
);
static ThemeData darkttheme=ThemeData(
  useMaterial3: true,
  fontFamily:'Poppins',
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
  textTheme: STextTheme.darkTextTheme,

);
}