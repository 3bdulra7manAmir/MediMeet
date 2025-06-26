import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_sizes.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../../config/theme/font_manager/fonts.dart';

abstract class AppStyles
{
  AppStyles._();

  ///Size= [24] Weight= [w600], Color= [_0D0D12], FontFamily= [InterTight]
  static TextStyle xXXLarge({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.xXXXLarge.sp,
      color: fontColor ?? AppColors.color.kBlack001,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  ///Size= [20.0] FontWeight= [w600], FontColor= [_0D0D12], FontFamily= [InterTight]
  static TextStyle xXLarge({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.xXXLarge.sp,
      color: fontColor ?? AppColors.color.kBlack001,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  ///Size= [18.0] FontWeight = [w600], FontColor = [FFFFFF], FontFamily = [InterTight]
  static TextStyle xLarge({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.xXLarge.sp,
      color: fontColor ?? AppColors.color.kWhite002,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  ///Size= [16.0] FontWeight = [w400], FontColor = [_36394A], FontFamily = [InterTight]
  static TextStyle large({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  }) {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.large.sp,
      color: fontColor ?? AppColors.color.kGrey001,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  ///Size= [14.0] FontWeight = [w700], FontColor = [F8F8F8], FontFamily = [InterTight]
  static TextStyle medium({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.medium.sp,
      color: fontColor ?? AppColors.color.kWhite003,
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  ///Size= [12.0] FontWeight = [w400], FontColor = [FFFFFF], FontFamily = [InterTight]
  static TextStyle small({
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: fontSize ?? AppFontSizes.small.sp,
      color: fontColor ?? AppColors.color.kWhite002,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }
}

