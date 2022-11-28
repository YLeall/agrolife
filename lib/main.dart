import 'package:agrolife/pages/mobile/create_account.dart';
import 'package:agrolife/pages/splash_screen.dart';
import 'package:agrolife/responsive/mobile_scaffold.dart';
import 'package:agrolife/responsive/responsive_layout.dart';
import 'package:agrolife/responsive/tablet_scaffold.dart';
import 'package:agrolife/utils/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primary),
      home: const SplashScreen(),
    );
  }
}

