import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xFF14B8A6);

final ThemeData appTheme = ThemeData(
  primaryColor: primaryColor,
  // Use `brightness: Brightness.light` to ensure consistency.
  colorScheme: ColorScheme.fromSeed(seedColor: primaryColor, brightness: Brightness.light),
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.urbanistTextTheme(
    ThemeData.light().textTheme,
  ).copyWith(
    // For large headlines like "Welcome to Splitzy!"
    headlineLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    // For smaller headlines like "Forgot Password?"
    headlineSmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
     // For subtitles
    titleMedium: TextStyle(fontSize: 16, color: Colors.grey[700]),
    // For button text
    labelLarge: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    // For regular body text
    bodyMedium: TextStyle(fontSize: 14, color: Colors.grey[600]),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: GoogleFonts.urbanist(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryColor,
      textStyle: GoogleFonts.urbanist(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: primaryColor),
    ),
    labelStyle: TextStyle(color: Colors.grey[600]),
  ),
);
