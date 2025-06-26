import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../../../presentation/controller/filters_controllers/selected_filter_choices_controller.dart';
import '../../../../../controller/filters_controllers/location/location_filter_controller.dart';
import '../../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../choice_widget.dart';
import '../filters_title_widget.dart';

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
            child: CustomListviewBuilder(
              scrollDirection: Axis.horizontal,
              itemCount: selectedChoices.length,
              itemBuilder: (context, index)
              {
                final choice = selectedChoices[index];
                return ChoiceWidget(
                  choice: choice.label,
                  onRemove: ()
                  {
                    ref.read(selectedFilterChoicesProvider.notifier).removeChoice(choice);
                    final locations = ref.read(locationFilterProvider).asData?.value;
                    if (locations != null)
                    {
                      final idx = locations.indexWhere((l) => l.id?.toString() == choice.id);
                      if (idx != -1)
                      {
                        ref.read(locationCheckboxProvider.notifier).setValue(choice.id, false);
                      }
                    }
                  },
                );
              },
              separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
            ),
          ),
      ],
    );
  }
}

