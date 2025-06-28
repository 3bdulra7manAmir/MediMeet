import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../controller/shared_checkbox_notifier.dart';
import '../../../widget/check_box_widget.dart';

class ClinicTypeChooseWidget extends ConsumerWidget
{
  const ClinicTypeChooseWidget({
    super.key,
    required this.index,
    required this.clinicTypeName,
    this.clinicTypeId,
  });

  final int index;
  final String clinicTypeName;
  final String? clinicTypeId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final id = clinicTypeId ?? index.toString();
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          id: id,
          provider: clinicTypeCheckboxProvider,
          onChanged: (val) => ref.read(clinicTypeCheckboxProvider.notifier).setValue(id, val),
        ),
        Sizes.size8.horizontalSpace,
        Text(clinicTypeName, style: AppStyles.large()),
      ],
    );
  }
}
