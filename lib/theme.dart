import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// New Color Palette
const Color primaryAction = Color(0xFF0D9488); // Deep Teal
const Color softCream = Color(0xFFFAF9F6); // Soft Cream
const Color lightMint = Color(0xFFCCFBF1); // Light Mint
const Color darkSlate = Color(0xFF1E293B); // Dark Slate

final ThemeData appTheme = ThemeData(
  primaryColor: primaryAction,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryAction,
    brightness: Brightness.light,
    secondary: lightMint, // Use Light Mint as secondary
  ),
  scaffoldBackgroundColor: softCream,
  textTheme: GoogleFonts.plusJakartaSansTextTheme(
    ThemeData.light().textTheme,
  ).copyWith(
    // For large headlines like "Welcome to Splitzy!"
    headlineLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: darkSlate),
    // For smaller headlines like "Forgot Password?"
    headlineSmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: darkSlate),
     // For subtitles
    titleMedium: TextStyle(fontSize: 16, color: darkSlate.withAlpha(178)),
    // For button text
    labelLarge: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    // For regular body text
    bodyMedium: TextStyle(fontSize: 14, color: darkSlate.withAlpha(204)),
    // For small body text
    bodySmall: TextStyle(fontSize: 12, color: Colors.grey[600]),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryAction,
      foregroundColor: Colors.white, // White text on buttons looks good
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      textStyle: GoogleFonts.plusJakartaSans(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryAction,
      textStyle: GoogleFonts.plusJakartaSans(
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
      borderSide: const BorderSide(color: primaryAction),
    ),
    labelStyle: TextStyle(color: darkSlate.withAlpha(153)),
  ),
);