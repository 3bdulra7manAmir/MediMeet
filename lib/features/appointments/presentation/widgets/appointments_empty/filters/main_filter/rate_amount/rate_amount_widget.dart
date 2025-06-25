import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../../core/constants/app_images.dart';
import '../../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_styles.dart';
import '../../../../appointments/past_appointment/rate_stars_bar.dart';


class RateAmountApplyWidget extends StatelessWidget
{
  const RateAmountApplyWidget({super.key, required this.initialValue, required this.ratingText});

  final double initialValue;
  final String ratingText;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 32.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xXSmall,
        color: AppColors.color.kGrey005,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Sizes.size6.horizontalSpace,
          RateStars(initialValue: initialValue, itemPadding: AppPadding.symmetric.xXXSmall,),
          Sizes.size2.horizontalSpace,
          Text(ratingText, style: AppStyles.large(fontColor: AppColors.color.kBlack002),),
          Sizes.size4.horizontalSpace,
          GestureDetector(
            //onTap: () => ,
            child: SvgPicture.asset(AppAssets.icons.cancelBlack)
          ),
          Sizes.size8.horizontalSpace,
        ],
      ),
    );
  }
}