import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/theme/color_manager/colors.dart';
import '../../../config/theme/font_manager/font_weights.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';

class CustomButton extends ConsumerWidget
{
  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.backgroundColor,
    required this.onPressed,
    this.onLongPress,
    required this.text,
    this.textStyle,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? backgroundColor;
  final void Function() onPressed;
  final void Function()? onLongPress;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    return SizedBox(
      width: width,
      height: height ?? 52.h,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: WidgetStateProperty.all<EdgeInsetsGeometry?>(padding),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: borderRadius ?? AppRadiuses.circular.small,
            side: BorderSide(width: borderWidth ?? (Sizes.size1).w, color: borderColor ?? AppColors.color.kTransparent)
            ),),
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor ?? AppColors.color.kBlue001,),
        ),
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: Text(text, style: textStyle ?? AppStyles.large(fontColor: AppColors.color.kWhite002, fontWeight: AppFontWeights.semiBoldWeight),),
      ),
    );
  }
}
