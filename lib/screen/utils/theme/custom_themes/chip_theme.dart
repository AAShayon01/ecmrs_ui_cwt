import 'package:flutter/material.dart';
class SChipTheme{
  SChipTheme._();

  ///Light

static ChipThemeData lightChipThemeData=ChipThemeData(
  disabledColor: Colors.grey.withOpacity(.5),
  labelStyle: const TextStyle(color: Colors.black),
  selectedColor: Colors.blue,
  padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
  checkmarkColor: Colors.white,
);


///dark

  static ChipThemeData darkChipThemeData=ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white,
  );
}