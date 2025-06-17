import 'package:flutter/material.dart';
import '../../../core/constants/app_borders.dart';
import '../color_manager/colors.dart';


abstract class AppLightStyles
{
  AppLightStyles._();

  static ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: AppRadiuses.circular.xxLarge,
              side: BorderSide(color: AppColors.color.kTransparent, width: AppBorderWidth.thin,),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(AppColors.color.kBlue001),
          overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
          splashFactory: NoSplash.splashFactory,
          shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
          elevation: WidgetStateProperty.all(0),
          alignment: Alignment.center,
        ),
      );

}