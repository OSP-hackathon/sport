import 'package:flutter/material.dart';

import 'package:sport2/ui/ui_kit/colors.dart';

final ThemeData lightTheme = ThemeData.light(
  useMaterial3: true,
).copyWith(
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 48,
    ),
    displayMedium: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 36,
    ),
    displaySmall: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 24,
    ),
    headlineLarge: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 20,
    ),
    headlineMedium: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 18,
    ),
    headlineSmall: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      color: UiColors.lightText,
      fontFamily: 'JetBrainsMono',
      fontSize: 10,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: UiColors.darkText,
      textStyle: const TextStyle(
        color: UiColors.lightText,
        fontFamily: 'JetBrainsMono',
        fontSize: 14,
      ),
    ),
  ),
  canvasColor: UiColors.lightBackground,
  primaryColor: UiColors.main2,
  scaffoldBackgroundColor: UiColors.lightBackground,
  colorScheme: const ColorScheme.light().copyWith(),
);
