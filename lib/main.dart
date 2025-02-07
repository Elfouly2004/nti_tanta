import 'package:flutter/material.dart';
import 'package:nti_flutter/home_screen.dart';
import 'package:nti_flutter/page2.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: page()
    );
  }
}


