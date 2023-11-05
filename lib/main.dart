import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app.dart';

bool show= true;
void main() async {
  ///Adding widget
  ///initialize local storage
  ///Native splash
  ///Firebase
  ///Authentication
  WidgetsFlutterBinding.ensureInitialized();
  final pref=await SharedPreferences.getInstance();
  show= pref.getBool('OnBoardingScreen') ?? true;
  runApp(const App());
}