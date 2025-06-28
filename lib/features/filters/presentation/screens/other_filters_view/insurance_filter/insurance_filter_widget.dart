import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../controller/shared_checkbox_notifier.dart';
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
        CheckBoxWidget(id: id, provider: insuranceCheckboxProvider,
          onChanged: (val) => ref.read(insuranceCheckboxProvider.notifier).setValue(id, val),
        ),
        Sizes.size4.horizontalSpace,
        Text(insuranceName, style: AppStyles.large()),
      ],
    );
  }
}
