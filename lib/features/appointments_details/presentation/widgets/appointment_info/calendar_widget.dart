import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';


class CalendarWidget extends StatelessWidget
{
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      width: 80.w,
      height: 80.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.medium,
        color: AppColors.color.kWhite003,
      ),
      child: SvgPicture.asset(AppAssets.icons.calendar),
    );
  }
}