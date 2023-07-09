import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 131, 57, 0)),
    textTheme: GoogleFonts.latoTextTheme());

void mian() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: theme,
      home: const CategoriesScreen(),
    );
  }
}
