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

}