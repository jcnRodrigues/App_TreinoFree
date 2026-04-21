import 'package:flutter/material.dart';

import '../data/training_data.dart';
import '../screens/home_screen.dart';

class TreinoFreeApp extends StatelessWidget {
  const TreinoFreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D5C63),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F8F7),
      ),
      home: const HomeScreen(),
    );
  }
}
