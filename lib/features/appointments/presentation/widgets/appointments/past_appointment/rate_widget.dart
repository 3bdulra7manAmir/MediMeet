import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_appointments/core/extensions/string.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import 'no_rate_widget.dart';
import 'rate_model_sheet.dart';

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
          Text("${rate?.cleanFormat()} – ", style: AppStyles.medium(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),),
          Expanded(
            child: Text(description!, style: AppStyles.medium(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),
              maxLines: 1, overflow: TextOverflow.ellipsis,
            ).paddingDirectionalOnly(end: 25.w),
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
          Text(rate!.cleanFormat(), style: AppStyles.medium(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002)),
        ],
      );
    }
    else
    {
      return GestureDetector(
        onTap: () => showRateBottomSheet(context),
        child: const NoRateWidget()
      );
    }
  }
}

