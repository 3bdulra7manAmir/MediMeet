import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_sizes.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../../config/theme/font_manager/fonts.dart';

abstract class AppStyles
{
  AppStyles._();

  ///Weight= [w600], Color= [_0D0D12], FontFamily= [InterTight]
  static TextStyle textStyle24({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: AppFontSizes.xXXXLarge.sp,
      color: fontColor ?? AppColors.color.kBlack001,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// FontWeight= [w600], FontColor= [_0D0D12], FontFamily= [InterTight]
  static TextStyle textStyle20({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: AppFontSizes.xXXLarge.sp,
      color: fontColor ?? AppColors.color.kBlack001,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// FontWeight = [w600], FontColor = [FFFFFF], FontFamily = [InterTight]
  static TextStyle textStyle18({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: AppFontSizes.xXLarge.sp,
      color: fontColor ?? AppColors.color.kWhite002,
      fontWeight: fontWeight ?? AppFontWeights.semiBoldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// FontWeight = [w400], FontColor = [_36394A], FontFamily = [InterTight]
  static TextStyle textStyle16({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  }) {
    return TextStyle(
      fontSize: AppFontSizes.large.sp,
      color: fontColor ?? AppColors.color.kGrey001,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// FontWeight = [w700], FontColor = [F8F8F8], FontFamily = [InterTight]
  static TextStyle textStyle14({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: AppFontSizes.medium.sp,
      color: fontColor ?? AppColors.color.kWhite003,
      fontWeight: fontWeight ?? AppFontWeights.boldWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }

  /// FontWeight = [w400], FontColor = [FFFFFF], FontFamily = [InterTight]
  static TextStyle textStyle12({
    FontWeight? fontWeight,
    String? fontFamily,
    TextDecoration? textDecoration,
    TextOverflow? textOverflow,
    Color? textDecorationColor,
    Color? fontColor,
  })
  {
    return TextStyle(
      fontSize: AppFontSizes.small.sp,
      color: fontColor ?? AppColors.color.kWhite002,
      fontWeight: fontWeight ?? AppFontWeights.regularWeight,
      fontFamily: AppFonts.font.fontName,
      decoration: textDecoration,
      decorationColor: textDecorationColor,
      overflow: textOverflow ?? TextOverflow.ellipsis,
    );
  }
}
