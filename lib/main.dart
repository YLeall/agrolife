import 'package:agrolife/pages/mobile/home_page.dart';
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
      theme: ThemeData(
        primaryColor: primary,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black
        ),
      ),
      home: const HomePage(),
    );
  }
}

