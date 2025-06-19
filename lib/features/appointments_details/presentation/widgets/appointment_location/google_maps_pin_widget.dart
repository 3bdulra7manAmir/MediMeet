import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/config/theme/color_manager/colors.dart';
import 'package:medical_appointments/core/constants/app_borders.dart';
import 'package:medical_appointments/core/constants/app_paddings.dart';

import '../../../../../core/constants/app_sizes.dart';

class GoogleMapsPinWidget extends StatelessWidget
{
  const GoogleMapsPinWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.large,
      width: 72.w,
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xlarge,
        color: AppColors.color.kBlue004,
      ),
      child: Container(
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.circular.xsmall,
          border: Border.all(color: AppColors.color.kBlue001, width: Sizes.size10.w),
        ),
      ),
    );
  }
}