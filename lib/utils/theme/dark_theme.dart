import 'package:flutter/material.dart';

class DarkTheme {
  const DarkTheme._();

  static final darkTheme = ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
    primaryColor: Colors.black,

    // Scaffold
    scaffoldBackgroundColor: const Color.fromARGB(255, 14, 14, 14),

    // Icon
    iconTheme: const IconThemeData(color: Colors.blue),

    // App Bar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 14, 14, 14),
      surfaceTintColor: Color.fromARGB(255, 14, 14, 14),
      foregroundColor: Colors.white,
    ),

    // Texts
    primaryTextTheme: const TextTheme(
      headlineLarge: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      displayLarge: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      displayLarge: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
    ),

    // Card
    cardTheme: const CardTheme(color: Colors.black, elevation: 0),

    // Input Decoration
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
