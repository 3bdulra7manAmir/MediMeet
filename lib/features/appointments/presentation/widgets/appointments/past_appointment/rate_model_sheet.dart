import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/popers/modal_bottom_sheet.dart';
import '../../../../../../core/widgets/textform_field.dart';
import 'rate_stars_bar.dart';

void showRateBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppRadiuses.only.xSmall2),
    builder: (BuildContext context)
    {
      final TextEditingController commentController = TextEditingController();
      return  SizedBox(
        height: 250.h, width: double.infinity,
        child: Column(
          children:
          [
            Sizes.size16.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(AppStrings.comment, style: AppStyles.medium(fontColor: AppColors.color.kBlack001),),
                Sizes.size10.horizontalSpace,
                SizedBox(height: 50.h, width: 260.w, child: CustomTextFormField(controller: commentController,)
                ),
              ],
            ),
            Sizes.size24.verticalSpace,
            const RateStars(),
            Sizes.size24.verticalSpace,
            CustomButton(buttonOnPressed: ()
            {
              log('Submitted comment: ${commentController.text.trim()}');
              AppRouter.router.pop(); 
            } , buttonText: AppStrings.submit, buttonWidth: 300.w,),
            Sizes.size16.verticalSpace,
          ],
        ),
      );
    },
  );
}