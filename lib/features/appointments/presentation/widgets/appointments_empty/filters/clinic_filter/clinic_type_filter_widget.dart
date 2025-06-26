import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../check_box_widget.dart';

class ClinicTypeChooseWidget extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          index: index,
          provider: clinicTypeCheckboxProvider,
          onChanged: (val) {
            final notifier = ref.read(selectedFilterChoicesProvider.notifier);
            final choice = SelectedFilterChoice(
              type: FilterType.clinicType,
              id: clinicTypeId ?? index.toString(),
              label: clinicTypeName,
            );
            if (val) {
              notifier.addChoice(choice);
            } else {
              notifier.removeChoice(choice);
            }
          },
        ),
        Sizes.size8.horizontalSpace,
        Text(clinicTypeName, style: AppStyles.large()),
      ],
    );
  }
}
