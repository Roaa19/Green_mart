import 'package:flutter/material.dart';
import 'package:greenmart/core/style/color.dart';
import 'package:greenmart/feature/main/main_app_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        fontFamily: 'Poppins',
        appBarTheme: AppBarTheme(
          elevation: 0,
          scrolledUnderElevation: 0,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(body: Center(child: MainAppScreen())),
    );
  }
}
