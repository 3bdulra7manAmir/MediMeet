import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/custom_listview_builder.dart';
import '../choice_widget.dart';
import '../../../../../../presentation/controller/filters_controllers/selected_filter_choices_controller.dart';
import '../../../../../controller/filters_controllers/shared_checkbox_notifier.dart';

class ClinicTypeApplyListWidget extends ConsumerWidget
{
  const ClinicTypeApplyListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedChoices = ref.watch(selectedFilterChoicesProvider).where((c) => c.type == FilterType.clinicType).toList();
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
            log('Removed clinic type: \\${selectedChoices[index].label}');
            ref.read(selectedFilterChoicesProvider.notifier).removeChoice(choice);
            ref.read(clinicTypeCheckboxProvider.notifier).setValue(choice.id, false);
          },
        );
      },
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}