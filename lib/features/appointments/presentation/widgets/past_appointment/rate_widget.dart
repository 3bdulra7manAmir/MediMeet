import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_appointments/core/extensions/string.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import 'no_rate_widget.dart';

class RateWidget extends StatelessWidget
{
  final double? rate;
  final String? description;
  const RateWidget({super.key, this.rate, this.description});

  @override
  Widget build(BuildContext context)
  {
    if (rate != null && description != null && description!.isNotEmpty)
    {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          SvgPicture.asset(AppAssets.icons.filledRate),
          Sizes.size4.horizontalSpace,
          Text("${rate?.cleanFormat()} – ", style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),),
          Expanded(
            child: Text(description!, style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),
              maxLines: 1, overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      );
    }
    else if (rate != null)
    {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          SvgPicture.asset(AppAssets.icons.filledRate),
          Sizes.size4.horizontalSpace,
          Text(rate!.cleanFormat(), style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002)),
        ],
      );
    }
    else
    {
      return const NoRateWidget();
    }
  }
}

