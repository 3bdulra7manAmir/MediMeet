import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../widget/choice_widget.dart';
import '../../../controller/selected_filter_choices_controller.dart';
import '../../../controller/shared_checkbox_controller.dart'; // فيه checkboxValuesNotifierProvider و CheckboxGroup

class ClinicTypeApplyListWidget extends ConsumerWidget {
  const ClinicTypeApplyListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChoices = ref
        .watch(selectedFilterChoicesProvider)
        .where((c) => c.type == FilterType.clinicType)
        .toList();

    return CustomListviewBuilder(
      itemCount: selectedChoices.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index)
      {
        final choice = selectedChoices[index];
        return ChoiceWidget(
          choice: choice.label,
          onRemove: ()
          {
            log('Removed clinic type: ${choice.label}');
            ref.read(selectedFilterChoicesProvider.notifier).removeChoice(choice);
            ref.read(checkboxValuesNotifierProvider.notifier).setValue(CheckboxGroup.clinicType, choice.id, false);
          },
        );
      },
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}
