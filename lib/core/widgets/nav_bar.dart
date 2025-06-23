
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager/colors.dart';
import '../constants/app_borders.dart';
import '../constants/app_margins.dart';

class NavBarWidget extends StatelessWidget
{
  const NavBarWidget({super.key, this.margin, this.alignment, this.width, this.height, this.borderRadius, this.color, required this.navBarChildren});

  final EdgeInsetsGeometry? margin;
  final AlignmentGeometry? alignment;
  final double? width;
  final double? height;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final List<Widget> navBarChildren;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: margin ?? AppMargins.symmetric.medium,
      alignment: alignment ?? Alignment.center,
      //width: width ?? 430.w,
      height: height ?? 105.h,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? AppRadiuses.circular.xxsmall,
        color: color ?? AppColors.color.kWhite002,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: navBarChildren,
      ),
    );
  }
}

