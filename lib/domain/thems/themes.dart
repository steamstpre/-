import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  final _lightTheme = ThemeData();
  final _darkTheme = ThemeData.dark();

  ThemeData get lightTheme => _lightTheme.copyWith(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            color: Color(0xFF3C4043),
            fontSize: 16,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          labelMedium: TextStyle(
            color: Color(0xFFFF522F),
            fontSize: 20,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF522F),
        ),
        useMaterial3: true,
      );

  ThemeData get darkTheme => _darkTheme.copyWith(
        textTheme: GoogleFonts.kadwaTextTheme(
          _lightTheme.textTheme.copyWith(
            bodyMedium: const TextStyle(color: Colors.white),
            bodyLarge: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFA283BB),
          background: const Color(0xFFA283BB),
        ),
        useMaterial3: true,
      );
}
