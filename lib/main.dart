import 'package:ecmrs_ui_fbase/screen/firstpage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.deepPurpleAccent,
      home: Firstpage(),
    );
  }
}
