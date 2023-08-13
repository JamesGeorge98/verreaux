import 'package:flutter/material.dart';
import 'package:verreaux/core/constants/app_themes.dart';

import 'features/homepage/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.lightThemeData,
      home: const HomePage(),
    );
  }
}

