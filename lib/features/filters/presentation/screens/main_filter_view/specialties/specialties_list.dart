import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../widget/choice_widget.dart';
import '../../../controller/selected_filter_choices_controller.dart';
import '../../../controller/shared_checkbox_controller.dart';

class SpecialtiesApplyListWidget extends ConsumerWidget
{
  const SpecialtiesApplyListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedChoices = ref.watch(selectedFilterChoicesProvider).where((c) => c.type == FilterType.specialty).toList();
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
            log('Removed specialty: \\${choice.label}');
            ref.read(selectedFilterChoicesProvider.notifier).removeChoice(choice);
            ref.read(checkboxValuesNotifierProvider.notifier).setValue(CheckboxGroup.specialty, choice.id, false);
          },
        );
      },
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}