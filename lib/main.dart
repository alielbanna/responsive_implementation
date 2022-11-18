import 'dart:io';

import 'package:flutter/material.dart';
import 'package:responsive_implementation/desktop.dart';
import 'package:responsive_implementation/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Implementation Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.minWidth.toInt());

          if (constraints.minWidth.toInt() <= 560) {
            return MobileScreen();
          }
          return DesktopScreen();
        },
      ),
    );
  }
}
