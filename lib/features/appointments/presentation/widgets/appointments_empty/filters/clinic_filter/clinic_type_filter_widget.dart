import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/constants/app_styles.dart';

import '../../../../../../../core/constants/app_sizes.dart';

class FiltersClinicWidget extends StatelessWidget
{
  const FiltersClinicWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: 
      [
        Sizes.size16.horizontalSpace,
        Checkbox.adaptive(value: false, onChanged: (value) => log("Checked"),),
        Sizes.size8.horizontalSpace,
        Text("All", style: AppStyles.large(),)
      ],
    );
  }
}