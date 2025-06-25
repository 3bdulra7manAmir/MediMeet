import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../check_box_widget.dart';

class SpecialtyFilterChooseWidget extends StatelessWidget
{
  const SpecialtyFilterChooseWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        const CheckBoxWidget(),
        Sizes.size8.horizontalSpace,
        Text("Dermatology", style: AppStyles.large(),),
      ],
    );
  }
}