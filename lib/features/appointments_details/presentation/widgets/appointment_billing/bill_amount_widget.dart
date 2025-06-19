import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';

class BillAmountWidget extends StatelessWidget
{
  const BillAmountWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text("Bill amount", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        const Spacer(),
        Row(
          children:
          [
            Image.asset(AppAssets.icons.saudiRiyalPNG,),
            Sizes.size4.horizontalSpace,
            Text("250", style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),),
          ],
        )
      ],
    );
  }
}
