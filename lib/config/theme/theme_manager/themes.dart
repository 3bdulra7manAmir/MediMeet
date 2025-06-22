import 'package:flutter/material.dart';
import '../color_manager/colors.dart';
import 'themes_styles.dart';

class AppThemes
{
  AppThemes._();

  static ThemeData defaultTheme()
  {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.color.kWhite001,
      cardTheme: AppLightStyles.cardTheme,

      elevatedButtonTheme: AppLightStyles.elevatedButtonTheme,
      inputDecorationTheme: AppLightStyles.inputBorder,

      appBarTheme: AppLightStyles.appBarTheme,
      dialogTheme: AppLightStyles.dialogTheme,
      bottomSheetTheme: AppLightStyles.bottomSheetTheme,
      
    );
  }
}