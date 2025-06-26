import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';
import '../check_box_widget.dart';

class InsuranceFilterChooseWidget extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final id = insuranceId ?? index.toString();
    return Row(
      children: [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          id: id,
          provider: insuranceCheckboxProvider,
          onChanged: (val) {
            final notifier = ref.read(selectedFilterChoicesProvider.notifier);
            final choice = SelectedFilterChoice(
              type: FilterType.insuranceProvider,
              id: id,
              label: insuranceName,
            );
            if (val) {
              notifier.addChoice(choice);
            } else {
              notifier.removeChoice(choice);
            }
          },
        ),
        Sizes.size4.horizontalSpace,
        Text(insuranceName, style: AppStyles.large()),
      ],
    );
  }
}
