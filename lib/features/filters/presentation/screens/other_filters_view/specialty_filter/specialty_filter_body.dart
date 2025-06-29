import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/custom_nav_bar.dart';
import '../../../../domain/usecase/specialty_usecase.dart';
import 'specialty_filter_list.dart';
import '../../../controller/shared_checkbox_controller.dart';
import '../../../controller/selected_filter_choices_controller.dart';

class SpecialtyFilterBody extends StatelessWidget
{
  const SpecialtyFilterBody({super.key});

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
            const CustomFiltersAppbar(appbarText: AppStrings.specialty),
            Sizes.size24.verticalSpace,
            const SpecialtyFilterChooseListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _) {
          return CustomNavBar(
            navBarChildren: CustomButton(
              text: AppStrings.addFilter,
              onPressed: () {
                final specialties = ref.read(specialtyUseCaseProvider).asData?.value ?? [];
                final checked = ref.read(checkboxValuesNotifierProvider);
                final specialtiesChecked = checked[CheckboxGroup.specialty] ?? {};
                final notifier = ref.read(selectedFilterChoicesProvider.notifier);
                notifier.clearByType(FilterType.specialty);
                for (var i = 0; i < specialties.length; i++) {
                  final id = specialties[i].id?.toString() ?? i.toString();
                  if (specialtiesChecked[id] == true) {
                    final label = specialties[i].title ?? '';
                    notifier.addChoice(SelectedFilterChoice(
                      type: FilterType.specialty,
                      id: id,
                      label: label,
                    ));
                  }
                }
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
