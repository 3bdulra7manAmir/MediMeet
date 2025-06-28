import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../controller/shared_checkbox_notifier.dart';
import '../../../widget/check_box_widget.dart';

class SpecialtyFilterChooseWidget extends ConsumerWidget
{
  const SpecialtyFilterChooseWidget({
    super.key,
    required this.index,
    required this.specialtyName,
    this.specialtyId,
  });

  final int index;
  final String specialtyName;
  final String? specialtyId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final id = specialtyId ?? index.toString();
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(id: id, provider: specialtyCheckboxProvider,
          onChanged: (val) {
            ref.read(specialtyCheckboxProvider.notifier).setValue(id, val);
          },
        ),
        Sizes.size8.horizontalSpace,
        Text(specialtyName, style: AppStyles.large()),
      ],
    );
  }
}
