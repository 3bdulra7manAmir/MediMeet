import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/modal_bottom_sheet.dart';
import '../../../../../../core/widgets/textform_field.dart';
import 'rate_stars.dart';

void showRateBottomSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    isDismissible: true,
    shape: RoundedRectangleBorder(borderRadius: AppRadiuses.only.xSmall2),
    builder: (BuildContext context)
    {
      return  SizedBox(
        height: 150.h,
        width: 300.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
          [
            Sizes.size16.verticalSpace,
            SizedBox(
              height: 30.h,
              width: 170.w,
              child: const CustomTextFormField()
            ),
            Sizes.size24.verticalSpace,
            const RateStars(),
            Sizes.size16.verticalSpace,
          ],
        ),
      );
    },
  );
}