import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../../config/theme/font_manager/font_weights.dart';
import '../constants/app_borders.dart';
import '../constants/app_styles.dart';

class CustomButton extends ConsumerWidget
{
  const CustomButton({
    super.key,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonBorderRadius,
    this.buttonBorderColor,
    this.buttonBorderWidth,
    this.buttonBackgroundColor,
    required this.buttonText,
    this.buttonTextStyle,
    required this.buttonOnPressed,
    this.buttonPadding,
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final BorderRadiusGeometry? buttonBorderRadius;
  final Color? buttonBorderColor;
  final double? buttonBorderWidth;
  final Color? buttonBackgroundColor;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final void Function() buttonOnPressed;
  final EdgeInsetsGeometry? buttonPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight ?? 52.h,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(buttonPadding),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: buttonBorderRadius ?? AppRadiuses.circular.xxLarge,),),
          backgroundColor: WidgetStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.color.kBlue001,),
        ),
        onPressed: buttonOnPressed,
        child: Text(buttonText, style: buttonTextStyle ?? AppStyles.textStyle16(fontColor: AppColors.color.kWhite002, fontWeight: AppFontWeights.semiBoldWeight),),
      ),
    );
  }
}
