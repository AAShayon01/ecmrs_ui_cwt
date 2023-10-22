import 'package:ecmrs_ui_fbase/screen/utils/theme/theme.dart';
import 'package:flutter/material.dart';

///--Using This class to Setup Themes ,initial Bindings ,Animation --///

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: SAppTheme.lighttheme,
      darkTheme: SAppTheme.darkttheme,
    );
  }
}