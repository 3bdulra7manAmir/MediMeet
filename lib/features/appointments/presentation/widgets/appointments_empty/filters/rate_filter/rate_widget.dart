import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/constants/app_paddings.dart';


import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../appointments/past_appointment/rate_stars_bar.dart';

class FiltersRateWidget extends StatelessWidget
{
  const FiltersRateWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        Checkbox.adaptive(value: false, onChanged: (value) => log("Checked"),),
        Sizes.size8.horizontalSpace,
        RateStars(initialValue: 5, itemPadding: AppPadding.symmetric.xXXSmall),
        Sizes.size8.horizontalSpace,
        Text("(5.0+ only)", style: AppStyles.large(),)
      ],
    );
  }
}