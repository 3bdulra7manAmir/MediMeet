import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../check_box_widget.dart';

class ClinicTypeChooseWidget extends StatelessWidget
{
  const ClinicTypeChooseWidget({
    super.key,
    required this.index,
    required this.clinicTypeName,
  });

  final int index;
  final String clinicTypeName;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(index: index, provider: clinicTypeCheckboxProvider, onChanged: (val) => log("ClinicType[$index] selected: $val"),),
        Sizes.size8.horizontalSpace,
        Text(clinicTypeName, style: AppStyles.large()),
      ],
    );
  }
}
