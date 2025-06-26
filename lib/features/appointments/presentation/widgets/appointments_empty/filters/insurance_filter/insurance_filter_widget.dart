import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../check_box_widget.dart';



class InsuranceFilterChooseWidget extends StatelessWidget
{
  const InsuranceFilterChooseWidget({
    super.key,
    required this.index,
    required this.insuranceName,
  });

  final int index;
  final String insuranceName;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(index: index, provider: insuranceCheckboxProvider, onChanged: (val) => log("Selected: $insuranceName -> $val"),),
        Sizes.size4.horizontalSpace,
        Text(insuranceName, style: AppStyles.large()),
      ],
    );
  }
}
