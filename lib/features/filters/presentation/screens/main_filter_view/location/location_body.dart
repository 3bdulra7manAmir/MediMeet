import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../controller/selected_filter_choices_controller.dart';
import '../../../controller/shared_checkbox_notifier.dart';
import '../../../widget/choice_widget.dart';
import '../../../widget/filters_title_widget.dart';

class LocationApplyWidget extends ConsumerWidget
{
  const LocationApplyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedChoices = ref.watch(selectedFilterChoicesProvider).where((c) => c.type == FilterType.location).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.location, onTap: () => ModalSheetRouter.router.pushNamed(ModalSheetRoutes.locationFilter),),
        Sizes.size8.verticalSpace,
        if (selectedChoices.isEmpty)
          const SizedBox.shrink()
        else
          SizedBox(
            height: 29.h,
            child: ChoiceWidget(
              choice: selectedChoices.first.label,
              onRemove: ()
              {
                final choice = selectedChoices.first;
                ref.read(selectedFilterChoicesProvider.notifier).removeChoice(choice);
                ref.read(locationCheckboxProvider.notifier).clearAll();
              },
            ),
          ),
      ],
    );
  }
}

