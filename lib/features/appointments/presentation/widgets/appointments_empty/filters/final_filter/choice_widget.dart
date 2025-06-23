import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_appointments/config/theme/color_manager/colors.dart';
import 'package:medical_appointments/config/theme/font_manager/font_weights.dart';
import 'package:medical_appointments/core/constants/app_images.dart';
import 'package:medical_appointments/core/constants/app_paddings.dart';
import 'package:medical_appointments/core/constants/app_styles.dart';

import '../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../core/constants/app_sizes.dart';

class ChoiceWidget extends StatelessWidget
{
  const ChoiceWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.xXSmall,
      height: 29.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xxsmall,
        color: AppColors.color.kGrey006,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Text("Bupa", style: AppStyles.medium(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kBlack004),),
          Sizes.size4.horizontalSpace,
          SvgPicture.asset(AppAssets.icons.cancelBlack)
        ],
      ),
    );
  }
}