import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimens.dart';

class PThemes {
  PThemes._();

  static ThemeData dayTheme = ThemeData(
    fontFamily: 'Inter',
    brightness: Brightness.light,
    primaryColor: Colors.white,
    // accentColor: PColors.primary,
    iconTheme: const IconThemeData(
      color: PColors.textPrimary,
    ),
    // scaffoldBackgroundColor: PColors.scaffoldBackground,
    scaffoldBackgroundColor: Colors.grey.shade100,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: PColors.primary,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      behavior: SnackBarBehavior.floating,
    ),
    textTheme: const TextTheme(
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: 0.1,
      ),
      subtitle1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        letterSpacing: 0.15,
      ),
      headline5: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      headline6: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 24,
        letterSpacing: 0.15,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        letterSpacing: 0.8,
        fontWeight: FontWeight.w300,
        color: PColors.textSecondary,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        letterSpacing: 0.8,
        fontWeight: FontWeight.w300,
        color: PColors.textSecondary,
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 2,
      centerTitle: true,
      shadowColor: PColors.shadow,
      titleTextStyle: TextStyle(
        color: PColors.primary,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PDimens.borderRadius),
      ),
    ),
    dividerTheme: const DividerThemeData(
      space: 0,
      color: Color(0xFFADB8D9),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PDimens.borderRadius),
      ),
      backgroundColor: PColors.scaffoldBackground,
    ),
    cardTheme: CardTheme(
      elevation: 3,
      margin: EdgeInsets.zero,
      shadowColor: PColors.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PDimens.borderRadius),
      ),
    ),
    buttonTheme: ButtonThemeData(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 48,
      minWidth: 48,
      buttonColor: PColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      textTheme: ButtonTextTheme.primary,
      disabledColor: PColors.disabled,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.4,
        ),
        elevation: 0,
        minimumSize: const Size(48, 48),
        primary: PColors.primary,
        onPrimary: Colors.white,
        onSurface: PColors.disabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.4,
        ),
        minimumSize: const Size(48, 48),
        primary: PColors.primary,
        onSurface: PColors.disabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        side: const BorderSide(color: PColors.primary),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.4,
        ),
        minimumSize: const Size(48, 48),
        primary: PColors.primary,
        onSurface: PColors.disabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // fillColor: PColors.secondary.withAlpha(20),
      labelStyle: const TextStyle(color: PColors.textSecondary),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(PDimens.borderRadius),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(PDimens.borderRadius),
        borderSide: const BorderSide(color: PColors.primary, width: 1.0),
      ),
      alignLabelWithHint: true,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: Colors.white,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: PColors.primary,
      deleteIconColor: Colors.white,
      disabledColor: Colors.grey,
      selectedColor: PColors.primary,
      secondarySelectedColor: PColors.primary,
      labelPadding: const EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PDimens.borderRadius),
      ),
      labelStyle: const TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      secondaryLabelStyle: const TextStyle(
        fontSize: 12,
        letterSpacing: 0.4,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      brightness: Brightness.light,
    ),
  );

  static ThemeData nightTheme = ThemeData();
}
