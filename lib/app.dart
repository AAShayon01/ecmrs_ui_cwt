
import 'package:ecmrs_ui_fbase/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:ecmrs_ui_fbase/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

///--Using This class to Setup Themes ,initial Bindings ,Animation --///

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lighttheme,
      darkTheme: SAppTheme.darkttheme,
      home: OnBoardingScreen(),
    );
  }
}