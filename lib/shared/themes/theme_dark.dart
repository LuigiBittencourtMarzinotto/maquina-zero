import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maquina_zero/shared/themes/app_colors.dart';
import 'package:maquina_zero/shared/themes/app_text_styles.dart';


ThemeData buildAppThemeDark() {
  // ColorScheme DARK com suas cores
  final scheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primary,
    onPrimary: Colors.white,
    secondary: AppColors.grey,
    onSecondary: Colors.white,
    tertiary: AppColors.stroke,
    onTertiary: Colors.black,
    error: AppColors.delete,
    onError: Colors.white,
    background: AppColors.background,
    onBackground: Colors.white,
    surface: AppColors.shape,
    onSurface: AppColors.heading,
    surfaceTint: AppColors.primary,
    outline: AppColors.stroke,
    outlineVariant: AppColors.stroke.withOpacity(0.5),
    shadow: Colors.black,
    scrim: Colors.black,
    inverseSurface: Colors.white,
    onInverseSurface: Colors.black,
    primaryContainer: AppColors.primary.withOpacity(0.16),
    onPrimaryContainer: Colors.white,
    secondaryContainer: AppColors.grey.withOpacity(0.16),
    onSecondaryContainer: Colors.white,
    tertiaryContainer: AppColors.stroke.withOpacity(0.16),
    onTertiaryContainer: Colors.black,
    surfaceContainerHighest: AppColors.background,
    surfaceContainerHigh: const Color(0xFF1B2229),
    surfaceContainer: const Color(0xFF20262C),
    surfaceContainerLow: const Color(0xFF252C33),
    surfaceContainerLowest: const Color(0xFF0E1317),
    inversePrimary: AppColors.primary,
  );

  // TextTheme base usando suas fontes (Lexend Deca para títulos, Inter p/ botões/corpo)
  final textTheme = TextTheme(
    // ========== TITLES ==========
    // Seu titleHome (32 / w600)
    displaySmall: GoogleFonts.lexendDeca(
      fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.heading,
    ),
    // titleBoldHeading (20 / w600)
    titleLarge: GoogleFonts.lexendDeca(
      fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.heading,
    ),
    // titleRegular (20 / w400)
    titleMedium: GoogleFonts.lexendDeca(
      fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.heading,
    ),
    // titleListTile (17 / w600)
    titleSmall: GoogleFonts.lexendDeca(
      fontSize: 17, fontWeight: FontWeight.w600, color: AppColors.heading,
    ),

    // ========== BODY ==========
    bodyLarge: GoogleFonts.lexendDeca(
      fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.body,
    ),
    bodyMedium: GoogleFonts.lexendDeca(
      fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.body,
    ),
    bodySmall: GoogleFonts.lexendDeca(
      fontSize: 13, fontWeight: FontWeight.w400, color: AppColors.body,
    ),

    // ========== LABEL/BUTTONS ==========
    // buttonBoldHeading/Primary ~ labelLarge
    labelLarge: GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.heading,
    ),
    // buttonHeading/Primary ~ labelMedium
    labelMedium: GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w400, color: AppColors.heading,
    ),
    // caption ~ labelSmall
    labelSmall: GoogleFonts.lexendDeca(
      fontSize: 13, fontWeight: FontWeight.w400, color: AppColors.body,
    ),
  );

  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: scheme,
    scaffoldBackgroundColor: scheme.background,
    textTheme: textTheme,

    // Botões Material 3 com suas cores
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        textStyle: GoogleFonts.inter(
          fontSize: 15, fontWeight: FontWeight.w700, // usa seus "buttonBold*"
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: scheme.primary,
        textStyle: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: scheme.outline),
        foregroundColor: scheme.onSurface,
        textStyle: GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),

    cardTheme: CardThemeData(
      color: scheme.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outline.withOpacity(0.22)),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: scheme.surfaceContainer,
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: scheme.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: scheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: scheme.primary, width: 1.6),
      ),
      hintStyle: GoogleFonts.lexendDeca(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.body.withOpacity(0.7),
      ),
      labelStyle: GoogleFonts.lexendDeca(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: scheme.onSurface.withOpacity(0.9),
      ),
    ),

    dividerTheme: DividerThemeData(
      color: scheme.outline.withOpacity(0.24),
      thickness: 1,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: scheme.background,
      foregroundColor: scheme.onBackground,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.lexendDeca(
        fontSize: 20, fontWeight: FontWeight.w600, color: scheme.onBackground,
      ),
    ),

  );
}