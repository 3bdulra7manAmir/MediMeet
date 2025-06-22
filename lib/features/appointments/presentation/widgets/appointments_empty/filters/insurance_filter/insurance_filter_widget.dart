import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';

class InsuranceFilterWidget extends StatelessWidget
{
  const InsuranceFilterWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        Checkbox.adaptive(value: false, onChanged: (value) => log("Checked"),),
        Sizes.size8.horizontalSpace,
        Text("Bupa", style: AppStyles.large(),),
      ],
    );
  }
}