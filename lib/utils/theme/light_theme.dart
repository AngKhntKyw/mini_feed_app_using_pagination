import 'package:flutter/material.dart';

class LightTheme {
  const LightTheme._();

  static final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),

    primaryColor: Colors.white,

    // Icon
    iconTheme: const IconThemeData(color: Colors.blue),

    // Scaffold
    scaffoldBackgroundColor: const Color.fromARGB(255, 238, 238, 238),

    // App Bar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      surfaceTintColor: Color.fromARGB(255, 238, 238, 238),
      foregroundColor: Colors.black,
    ),

    // Text
    primaryTextTheme: const TextTheme(
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black),
      displayLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Colors.black),
      displaySmall: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.black),
      labelMedium: TextStyle(color: Colors.black),
      labelSmall: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
      titleSmall: TextStyle(color: Colors.black),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
      headlineSmall: TextStyle(color: Colors.black),
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black),
      displayLarge: TextStyle(color: Colors.black),
      displayMedium: TextStyle(color: Colors.black),
      displaySmall: TextStyle(color: Colors.black),
      labelLarge: TextStyle(color: Colors.black),
      labelMedium: TextStyle(color: Colors.black),
      labelSmall: TextStyle(color: Colors.black),
      titleLarge: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black),
      titleSmall: TextStyle(color: Colors.black),
    ),

    // Card
    cardTheme: const CardTheme(color: Colors.white, elevation: 0),

    // Input Decoration
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
