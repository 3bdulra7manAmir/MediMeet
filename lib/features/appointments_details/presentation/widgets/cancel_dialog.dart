import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/router/app_router/app_router.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/popers/app_dialog.dart';

void showCancelDialog(BuildContext context)
{
  showAppDialog(
    context: context,
    alignment: Alignment.bottomCenter,
    actionsAlignment: MainAxisAlignment.center,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Sizes.size24.verticalSpace,
        Container(width: 57.w, height: 4.h,
          decoration: BoxDecoration(color: AppColors.color.kGrey004, borderRadius: AppRadiuses.circular.xlarge,),),
        Sizes.size24.verticalSpace,
        Image.asset(AppAssets.icons.cancelBannerPNG),
        Sizes.size24.verticalSpace,
        Text(AppStrings.cancelAppointment, style: AppStyles.xXXLarge(), textAlign: TextAlign.center,),
        Sizes.size8.verticalSpace,
        Text(AppStrings.areYouSure, style: AppStyles.medium(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey001,),
          maxLines: 3, textAlign: TextAlign.center,),
      ],
    ),
    actions:
    [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          CustomButton(width: 334.w, height: 56.h,
            backgroundColor: AppColors.color.kRed002,
            text: AppStrings.confirmCancel,
            textStyle: AppStyles.xLarge(fontWeight: AppFontWeights.mediumWeight,),
            onPressed: () => log("Cancel"),
          ),
          Sizes.size8.verticalSpace,
          CustomButton(width: 334.w, height: 56.h,
            text: AppStrings.back,
            textStyle: AppStyles.xLarge(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack001,),
            backgroundColor: AppColors.color.kWhite002,
            borderColor: AppColors.color.kWhite001,
            borderWidth: Sizes.size4.w,
            onPressed: () => AppRouter.router.pop(),
          ),
        ],
      ),
    ],
  );
}
