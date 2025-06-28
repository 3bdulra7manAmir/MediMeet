import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../controller/shared_checkbox_notifier.dart';
import '../../../widget/choice_widget.dart';
import '../../../controller/selected_filter_choices_controller.dart';

class InsuranceApplyListWidget extends ConsumerWidget
{
  const InsuranceApplyListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedChoices = ref.watch(selectedFilterChoicesProvider).where((c) => c.type == FilterType.insuranceProvider).toList();
    return CustomListviewBuilder(
      itemCount: selectedChoices.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => ChoiceWidget(
        choice: selectedChoices[index].label,
        onRemove: ()
        {
          log('Removed insurance: \\${selectedChoices[index].label}');
          ref.read(selectedFilterChoicesProvider.notifier).removeChoice(selectedChoices[index]);
          ref.read(insuranceCheckboxProvider.notifier).setValue(selectedChoices[index].id, false);
        },
      ),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}