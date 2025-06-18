import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/config/theme/color_manager/colors.dart';
import 'package:medical_appointments/config/theme/font_manager/font_weights.dart';
import 'package:medical_appointments/core/constants/app_borders.dart';
import 'package:medical_appointments/core/constants/app_images.dart';
import 'package:medical_appointments/core/constants/app_styles.dart';

import '../../../../core/constants/app_sizes.dart';

class AppointmentInfoWidget extends StatelessWidget
{
  const AppointmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text("Al Noor Medical Center", style: AppStyles.textStyle20(fontColor: AppColors.color.kBlack003),),
            Container(
              width: 110.w,
              height: 29.h,
              decoration: BoxDecoration(
                color: AppColors.color.kGrey003,
                borderRadius: AppRadiuses.circular.medium,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Image.asset(AppAssets.icons.hartPNG),
                  Sizes.size4.horizontalSpace,
                  Text("Cardiology", style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack001),)
                ],
              ),
            ),
          ],
        ),
        Sizes.size8.verticalSpace,
        Text("Monday, June 3, 2025 - 4:00 PM", style: AppStyles.textStyle16(),),
      ],
    );
  }
}