import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecmrs_ui_fbase/screen/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter/material.dart';
class SAppTheme{
SAppTheme._();

static ThemeData lighttheme=ThemeData(
 useMaterial3: true,
 fontFamily:'Poppins',
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  textTheme: STextTheme.lightTextTheme,
  chipTheme: SChipTheme.lightChipTheme,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: SAppbarTheme.LightAppbarTheme,
  checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
  bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme,
  elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
  outlinedButtonTheme: SOutlineButtonTheme.lightOutlinedButtonTheme,
  inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme,

);
static ThemeData darkttheme=ThemeData(
  useMaterial3: true,
  fontFamily:'Poppins',
  brightness: Brightness.dark,
  primaryColor: Colors.blue,
  textTheme: STextTheme.darkTextTheme,
  chipTheme: SChipTheme.darkChipTheme,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: SAppbarTheme.DarkAppbarTheme,
  checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
  bottomSheetTheme: SBottomSheetTheme.darktBottomSheetTheme,
  inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme,
  outlinedButtonTheme: SOutlineButtonTheme.DarkOutlineButtonTheme,
  elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,

);
}