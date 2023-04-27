import 'package:flutter/material.dart';

import 'package:sport2/ui/ui_kit/colors.dart';

final ThemeData darkTheme = ThemeData.dark(
  useMaterial3: true,
).copyWith(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 48,
    ),
    displayMedium: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 36,
    ),
    displaySmall: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 24,
    ),
    headlineLarge: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 20,
    ),
    headlineMedium: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 18,
    ),
    headlineSmall: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      color: UiColors.darkText,
      fontFamily: 'JetBrainsMono',
      fontSize: 10,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: UiColors.main,
      textStyle: const TextStyle(
        color: UiColors.darkText,
        fontFamily: 'JetBrainsMono',
        fontSize: 14,
      ),
    ),
  ),
  
  canvasColor: UiColors.darkBackground,
  primaryColor: UiColors.main,
  scaffoldBackgroundColor: UiColors.darkBackground,
  colorScheme: const ColorScheme.dark().copyWith(),
);
