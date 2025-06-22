import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/string.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';

class PastDateWidget extends StatelessWidget
{
  final String dateTime;
  const PastDateWidget({super.key, required this.dateTime});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.xlargeHV,
      decoration: BoxDecoration(
          color: AppColors.color.kBlue002,
          borderRadius: AppRadiuses.only.xSmall1),
      child: Column(
        children:
        [
          Text(dateTime.toShortMonth, style: AppStyles.large(fontColor: AppColors.color.kWhite002),),
          Sizes.size4.verticalSpace,
          Text(dateTime.toDay, style: AppStyles.xLarge(),),
        ],
      ),
    );
  }
}