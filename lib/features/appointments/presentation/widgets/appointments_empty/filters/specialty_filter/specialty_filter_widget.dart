import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../check_box_widget.dart';

class SpecialtyFilterChooseWidget extends StatelessWidget
{
  const SpecialtyFilterChooseWidget({
    super.key,
    required this.index,
    required this.specialtyName,
  });

  final int index;
  final String specialtyName;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(index: index, provider: specialtyCheckboxProvider, onChanged: (val) => log("Selected specialty: $specialtyName -> $val"),),
        Sizes.size8.horizontalSpace,
        Text(specialtyName, style: AppStyles.large()),
      ],
    );
  }
}
