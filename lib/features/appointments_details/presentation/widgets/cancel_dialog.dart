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

void showCancelDialog(BuildContext context)
{
  showDialog(
    context: context, builder: (BuildContext context) => 
    AlertDialog(
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
          Image.asset(AppAssets.icons.cancelBannerPNG),
          Sizes.size24.verticalSpace,
          Text(AppStrings.cancelAppointment, style: AppStyles.textStyle24(), textAlign: TextAlign.center,),
          Sizes.size8.verticalSpace,
          Text(AppStrings.areYouSure, style: AppStyles.textStyle14(
            fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey001),
            maxLines: 2, textAlign: TextAlign.center,
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
              buttonTextStyle: AppStyles.textStyle18(fontWeight: AppFontWeights.mediumWeight),
              buttonOnPressed: () => log("Cancel"),
            ),
            Sizes.size8.verticalSpace,
            CustomButton(
              buttonWidth: 334.w,
              buttonHeight: 56.h,
              buttonText: AppStrings.back,
              buttonTextStyle: AppStyles.textStyle18(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack001),
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