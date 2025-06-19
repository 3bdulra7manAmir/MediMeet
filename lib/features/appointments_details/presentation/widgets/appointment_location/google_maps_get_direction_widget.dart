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

class GetDirectionsWidget extends StatelessWidget
{
  const GetDirectionsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      width: 128.w, height: 36.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xsmall,
        border: Border.all(color: AppColors.color.kBlue003),
        color: AppColors.color.kWhite006,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          SvgPicture.asset(AppAssets.icons.locationBlue),
          Sizes.size4.horizontalSpace,
          Text(AppStrings.getDirection, style: AppStyles.textStyle14(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),)
        ],
      ),
    );
  }
}
