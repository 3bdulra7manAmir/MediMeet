import 'package:flutter/material.dart';
import '../../config/theme/color_manager/colors.dart';

class AppDivider extends StatelessWidget
{
  const AppDivider({super.key, this.color, this.thickness, this.indent, this.endIndent});

  final Color? color;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  @override
  Widget build(BuildContext context)
  {
    return Divider(
      color: color ?? AppColors.color.kGreen002, 
      thickness: thickness,
      indent: indent,
      endIndent: endIndent,
    );
  }
}