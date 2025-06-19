import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';

class IDWidget extends StatelessWidget
{
  const IDWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("Appointment ID", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Text("#JZ-48291", style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),)
      ],
    );
  }
}