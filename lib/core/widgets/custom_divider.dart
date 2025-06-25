import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/color_manager/colors.dart';
import '../constants/app_sizes.dart';

class CustomDivider extends StatelessWidget
{
  const CustomDivider({super.key, this.color, this.thickness, this.indent, this.endIndent});

  final Color? color;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context)
  {
    return Divider(
      color: color ?? AppColors.color.kGrey005, 
      thickness: thickness ?? (Sizes.size2).h,
      indent: indent,
      endIndent: endIndent,
    );
  }
}