import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../../core/widgets/custom_nav_bar.dart';
import 'insurance_filter_list.dart';
import '../../../../controller/filters_controllers/insurance_provider/insurance_provider_filter_controller.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';

class InsuranceFilterBody extends StatelessWidget
{
  const InsuranceFilterBody({super.key});

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
            const CustomFiltersAppbar(appbarText: AppStrings.insuranceProvider),
            Sizes.size24.verticalSpace,
            const InsuranceFilterChooseListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _) {
          return CustomNavBar(
            navBarChildren: CustomButton(
              text: AppStrings.addFilter,
              onPressed: () {
                final insurances = ref.read(insuranceProviderFilterProvider).asData?.value ?? [];
                final checked = ref.read(insuranceCheckboxProvider);
                final notifier = ref.read(selectedFilterChoicesProvider.notifier);
                notifier.clearByType(FilterType.insuranceProvider);
                for (var i = 0; i < insurances.length; i++) {
                  final id = insurances[i].id?.toString() ?? i.toString();
                  if (checked[id] == true)
                  {
                    final label = insurances[i].title ?? '';
                    notifier.addChoice(SelectedFilterChoice(type: FilterType.insuranceProvider, id: id, label: label,
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
