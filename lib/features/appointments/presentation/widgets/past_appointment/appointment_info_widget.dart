import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
//import 'no_rate_widget.dart';
import 'rate_widget.dart';

class PastAppointmentInfoWidget extends StatelessWidget
{
  const PastAppointmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("Al Abeer Clinic", style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),),
        Sizes.size4.verticalSpace,
        Text("Pediatrics", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Sizes.size4.verticalSpace,
        Text("1:30 PM", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Sizes.size8.verticalSpace,
        //NoRateWidget(),
        const RateWidget(),
      ],
    );
  }
}