import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';

class NoRateWidget extends StatelessWidget
{
  const NoRateWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 105.w,
      height: 36.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xsmall,
        border: Border.all(color: AppColors.color.kBlue003),
        color: AppColors.color.kWhite006
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          SvgPicture.asset(AppAssets.icons.emptyRate),
          Sizes.size4.horizontalSpace,
          Text(AppStrings.rateVisit, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack002),)
        ],
      ),
    );
  }
}

