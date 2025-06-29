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
import '../../../../data/model/clinic_type.dart';
import '../../../controller/clinic_type/clinic_type_filter_controller.dart';
import '../../../controller/selected_filter_choices_controller.dart';
import '../../../controller/shared_checkbox_controller.dart';
import 'clinic_type_filter_list.dart';

class ClinicTypeFilterBody extends StatelessWidget
{
  const ClinicTypeFilterBody({super.key});

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
            const CustomFiltersAppbar(appbarText: AppStrings.clinicType),
            Sizes.size24.verticalSpace,
            const ClinicTypeFilterChooseListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        navBarChildren: Consumer(
          builder: (context, ref, _) => CustomButton(
            text: AppStrings.addFilter,
            onPressed: ()
            {
              final checked = ref.read(checkboxValuesNotifierProvider)[CheckboxGroup.clinicType] ?? {};
              final clinicTypes = ref.read(clinicTypeFilterProvider).asData?.value ?? [];
              final notifier = ref.read(selectedFilterChoicesProvider.notifier);
              notifier.clearByType(FilterType.clinicType);
              checked.forEach((id, isChecked)
              {
                if (isChecked)
                {
                  ClinicTypeModel? clinic;
                  try
                  {
                    clinic = clinicTypes.firstWhere((c) => c.id?.toString() == id);
                  }
                  catch (_)
                  {
                    clinic = null;
                  }
                  if (clinic != null)
                  {
                    notifier.addChoice(SelectedFilterChoice(type: FilterType.clinicType, id: id, label: clinic.title ?? '',),);
                  }
                }
              });
              ModalSheetRouter.router.pop();
            },
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
