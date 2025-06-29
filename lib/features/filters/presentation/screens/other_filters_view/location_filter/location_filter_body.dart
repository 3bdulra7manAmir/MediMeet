import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/custom_nav_bar.dart';
import '../../../controller/location/location_filter_controller.dart';
import '../../../controller/shared_checkbox_controller.dart';
import '../../../controller/selected_filter_choices_controller.dart';
import 'location_filter_list.dart';

class LocationFilterBody extends StatelessWidget
{
  const LocationFilterBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kWhite002,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size16.verticalSpace,
            const CustomFiltersAppbar(appbarText: AppStrings.location),
            Sizes.size24.verticalSpace,
            const LocationFilterChooseListBuilder(),
          ],
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _)
        {
          return CustomNavBar(
            navBarChildren: CustomButton(
              text: AppStrings.addFilter,
              onPressed: ()
              {
                final locations = ref.read(locationFilterProvider).asData?.value ?? [];
                final checked = ref.read(checkboxValuesNotifierProvider);
                final locationChecked = checked[CheckboxGroup.location] ?? {};
                final notifier = ref.read(selectedFilterChoicesProvider.notifier);
                notifier.clearByType(FilterType.location);
                for (var i = 0; i < locations.length; i++)
                {
                  final id = locations[i].id ?? i.toString();
                  if (locationChecked[id] == true)
                  {
                    final label = locations[i].title ?? '';
                    notifier.addChoice(SelectedFilterChoice(type: FilterType.location, id: id, label: label,));
                  }
                }
                final selected = ref.read(selectedFilterChoicesProvider).where((c) => c.type == FilterType.location).toList();
                log('Location Add Filter pressed. Selected: $selected');
                ModalSheetRouter.router.pop();
              },
              width: double.infinity,
            ),
          );
        },
      ),
    );
  }
}
