import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData lightheme = ThemeData(
  appBarTheme: AppBarTheme(
    
    backgroundColor: primary
  ),
        fontFamily: 'KulimPark',
          useMaterial3: false,
  colorScheme: ColorScheme(brightness: Brightness.dark, primary: primary, onPrimary: primary, secondary: secondary, onSecondary: secondary, error: error, onError: error, background: blackalt, onBackground: blackalt, surface: surface, onSurface: surface)
);