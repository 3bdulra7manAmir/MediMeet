import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../controller/shared_checkbox_controller.dart';
import '../../../widget/check_box_widget.dart';

class InsuranceFilterChooseWidget extends ConsumerWidget
{
  const InsuranceFilterChooseWidget({
    super.key,
    required this.index,
    required this.insuranceName,
    this.insuranceId,
  });

  final int index;
  final String insuranceName;
  final String? insuranceId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final id = insuranceId ?? index.toString();
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(id: id, group: CheckboxGroup.insurance,
          onChanged: (val) => ref.read(checkboxValuesNotifierProvider.notifier).setValue(CheckboxGroup.insurance, id, val),
        ),
        Sizes.size4.horizontalSpace,
        Text(insuranceName, style: AppStyles.large()),
      ],
    );
  }
}
