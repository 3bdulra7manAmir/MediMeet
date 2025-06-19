import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class PastDateWidget extends StatelessWidget
{
  const PastDateWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.largeHV,
      decoration: BoxDecoration(
        color: AppColors.color.kBlue002,
        borderRadius: AppRadiuses.only.xSmall
      ),
      child: Column(
        children:
        [
          Text("May", style: AppStyles.textStyle16(fontColor: AppColors.color.kWhite002),),
          Sizes.size4.verticalSpace,
          Text("22", style: AppStyles.textStyle18(),),
        ],
      ),
    );
  }
}