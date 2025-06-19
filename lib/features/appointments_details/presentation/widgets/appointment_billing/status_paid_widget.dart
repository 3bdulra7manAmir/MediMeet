import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class StatusPaidWidget extends StatelessWidget
{
  const StatusPaidWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 72.w,
      height: 28.h,
      decoration: BoxDecoration(
        color: AppColors.color.kGreen004,
        borderRadius: AppRadiuses.circular.xMedium,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          SvgPicture.asset(AppAssets.icons.correctGreen),
          Sizes.size4.horizontalSpace,
          Text("Paid", style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kGreen005),)
        ],
      ),
    );
  }
}

