import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../check_box_widget.dart';

class InsuranceFilterChooseWidget extends StatelessWidget
{
  const InsuranceFilterChooseWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        const CheckBoxWidget(),
        Sizes.size4.horizontalSpace,
        Text("Bupa", style: AppStyles.large(),),
      ],
    );
  }
}