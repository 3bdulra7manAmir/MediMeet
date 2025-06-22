import 'package:flutter/material.dart';
import '../../../core/constants/app_borders.dart';
import '../../../core/constants/app_margins.dart';
import '../color_manager/colors.dart';


abstract class AppLightStyles
{
  AppLightStyles._();

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: AppRadiuses.circular.small,
          side: BorderSide(color: AppColors.color.kTransparent,),),
      ),
      backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlue001),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
      elevation: WidgetStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      alignment: Alignment.center,
    ),
  );

  static InputDecorationTheme get inputBorder => InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: AppRadiuses.circular.xsmall,
    ),
  );

  static CardThemeData get cardTheme => CardThemeData(margin: AppMargins.symmetric.medium,);
  static AppBarTheme get appBarTheme => AppBarTheme(backgroundColor: AppColors.color.kWhite001, surfaceTintColor: AppColors.color.kTransparent);
  static DialogThemeData get dialogTheme => DialogThemeData(backgroundColor: AppColors.color.kWhite002,);

}