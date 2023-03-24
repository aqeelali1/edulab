import 'package:edulab/Theme.dart';
import 'package:edulab/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(iconTheme: IconThemeData(color: butColor2)),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
