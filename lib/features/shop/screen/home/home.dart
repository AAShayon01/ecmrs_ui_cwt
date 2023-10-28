import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child:const Center(child: const Text("This is HomeScreen")),
    );
  }
}
