import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../../../presentation/controller/filters_controllers/selected_filter_choices_controller.dart';
import 'rate_amount_widget.dart';

class RateAmountApplyListWidget extends ConsumerWidget {
  const RateAmountApplyListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChoices = ref
        .watch(selectedFilterChoicesProvider)
        .where((c) => c.type == FilterType.rating)
        .toList();
    return CustomListviewBuilder(
      itemCount: selectedChoices.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => RateAmountApplyWidget(
        initialValue: selectedChoices[index].extra is double
            ? selectedChoices[index].extra
            : 0.0,
        ratingText: selectedChoices[index].label,
        onRemove: () {
          ref.read(selectedFilterChoicesProvider.notifier).removeChoice(
                selectedChoices[index],
              );
        },
      ),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}