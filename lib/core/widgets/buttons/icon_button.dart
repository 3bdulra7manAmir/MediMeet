import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../../config/theme/font_manager/font_weights.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';

class CustomIconButton extends ConsumerWidget
{
  const CustomIconButton({
    super.key,
    this.buttonWidth,
    this.buttonHeight,
    this.buttonPadding,
    this.buttonBorderRadius,
    this.buttonBorderWidth,
    this.buttonBorderColor,
    this.buttonBackgroundColor,
    required this.buttonOnPressed,
    required this.buttonText,
    this.buttonTextStyle,
    required this.buttonIcon,
  });

  final double? buttonWidth;
  final double? buttonHeight;
  final EdgeInsetsGeometry? buttonPadding;
  final BorderRadiusGeometry? buttonBorderRadius;
  final double? buttonBorderWidth;
  final Color? buttonBorderColor;
  final Color? buttonBackgroundColor;
  final void Function() buttonOnPressed;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final Widget? buttonIcon;



  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight ?? 52.h,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(buttonPadding),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: buttonBorderRadius ?? AppRadiuses.circular.small,
            side: BorderSide(width: buttonBorderWidth ?? (Sizes.size1).w, color: buttonBorderColor ?? AppColors.color.kTransparent)
            ),),
          backgroundColor: WidgetStateProperty.all<Color>(buttonBackgroundColor ?? AppColors.color.kBlue001,),
        ),
        onPressed: buttonOnPressed,
        label: Text(buttonText, style: buttonTextStyle ?? AppStyles.large(fontColor: AppColors.color.kWhite002, fontWeight: AppFontWeights.semiBoldWeight),),
        icon: buttonIcon,
      ),
    );
  }
}
