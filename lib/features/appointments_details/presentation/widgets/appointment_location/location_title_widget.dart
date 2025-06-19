import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';

class LocationTitleWidget extends StatelessWidget
{
  const LocationTitleWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(AppStrings.location, style: AppStyles.textStyle18(fontColor: AppColors.color.kBlack001),),
        Sizes.size8.verticalSpace,
        Text("Riyadh – King Abdulaziz Road, Building 12", style: AppStyles.textStyle16(),),
      ],
    );
  }
}