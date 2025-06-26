import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';
import '../check_box_widget.dart';

class SpecialtyFilterChooseWidget extends ConsumerWidget {
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
      children: [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          id: id,
          provider: specialtyCheckboxProvider,
          onChanged: (val) {
            final notifier = ref.read(selectedFilterChoicesProvider.notifier);
            final choice = SelectedFilterChoice(
              type: FilterType.specialty,
              id: id,
              label: specialtyName,
            );
            if (val) {
              notifier.addChoice(choice);
            } else {
              notifier.removeChoice(choice);
            }
          },
        ),
        Sizes.size8.horizontalSpace,
        Text(specialtyName, style: AppStyles.large()),
      ],
    );
  }
}
