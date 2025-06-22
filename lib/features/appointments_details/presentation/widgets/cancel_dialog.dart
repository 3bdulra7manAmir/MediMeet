import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';

void showAppDialog(BuildContext context)
{
  showDialog(
    context: context, builder: (BuildContext context) => 
    AlertDialog(
      alignment: Alignment.bottomCenter,
      actionsAlignment: MainAxisAlignment.center,
      content:  Column(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Sizes.size24.verticalSpace,
          Container(width: 57.w, height: 4.h,
            decoration: BoxDecoration(color: AppColors.color.kGrey004, borderRadius: AppRadiuses.circular.xlarge),
          ),
          Sizes.size24.verticalSpace,
          Image.asset(AppAssets.icons.cancelBannerPNG,),
          Sizes.size24.verticalSpace,
          Text(AppStrings.cancelAppointment, style: AppStyles.xXXLarge(), textAlign: TextAlign.center,),
          Sizes.size8.verticalSpace,
          Text(AppStrings.areYouSure, style: AppStyles.medium(
            fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey001),
            maxLines: 3, textAlign: TextAlign.center,
          ),
        ],
      ),
      actions:
      [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            CustomButton(
              buttonWidth: 334.w,
              buttonHeight: 56.h,
              buttonBackgroundColor: AppColors.color.kRed002,
              buttonText: AppStrings.confirmCancel,
              buttonTextStyle: AppStyles.xLarge(fontWeight: AppFontWeights.mediumWeight),
              buttonOnPressed: () => log("Cancel"),
            ),
            Sizes.size8.verticalSpace,
            CustomButton(
              buttonWidth: 334.w,
              buttonHeight: 56.h,
              buttonText: AppStrings.back,
              buttonTextStyle: AppStyles.xLarge(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack001),
              buttonBackgroundColor: AppColors.color.kWhite002,
              buttonBorderColor: AppColors.color.kWhite001,
              buttonBorderWidth: (Sizes.size4).w,
              buttonOnPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ],
    ),
  );
}