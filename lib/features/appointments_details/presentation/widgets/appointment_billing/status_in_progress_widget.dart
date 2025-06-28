import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class StatusInPrograssWidget extends StatelessWidget
{
  const StatusInPrograssWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 120.w,
      height: 28.h,
      decoration: BoxDecoration(
        color: AppColors.color.kYellow001,
        borderRadius: AppRadiuses.circular.xXMedium,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Image.asset(AppAssets.icons.inProgressPNG, color: AppColors.color.kYellow002,),
          Sizes.size4.horizontalSpace,
          Text("In Progress", style: AppStyles.medium(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kYellow002),)
        ],
      ),
    );
  }
}