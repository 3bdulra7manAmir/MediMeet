import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/string.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/custom_divider.dart';

class UpComingDateWidget extends StatelessWidget
{
  final String dateTime;
  const UpComingDateWidget({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 48.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color.kGreen002,),
        borderRadius: AppRadiuses.circular.xXSmall,
        color: AppColors.color.kGreen001,
      ),
      child: Column(
        children:
        [
          Text(dateTime.toShortMonth, style: AppStyles.small(fontColor: AppColors.color.kWhite004), textAlign: TextAlign.center).paddingDirectionalOnly(top: 2.h),
          CustomDivider(color: AppColors.color.kGreen002, thickness: (Sizes.size1).h,),
          Text(dateTime.toDay, style: AppStyles.xXLarge(fontColor: AppColors.color.kWhite004), textAlign: TextAlign.center,).paddingDirectionalOnly(bottom: 3.h),
        ],
      ),
    );
  }
}