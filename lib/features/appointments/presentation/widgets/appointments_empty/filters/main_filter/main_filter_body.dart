import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/router/app_router/app_router.dart';
import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_nav_bar.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import 'clinic_type/clinic_type_body.dart';
import 'insurance_provider/insurance_provider_body.dart';
import 'location/location_widget.dart';
import 'has_insurance_widget.dart';
import 'rate_amount/rate_amount_body.dart';
import 'specialties/specialties_body.dart';

class MainFilterApply extends StatelessWidget
{
  final String appBarTitle;
  const MainFilterApply({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context,)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kWhite002,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size16.verticalSpace,
            CustomFiltersAppbar(appbarText: appBarTitle),
            Sizes.size32.verticalSpace,
      
            const HasInsuranceWidget(),
            Sizes.size16.verticalSpace,
            const CustomDivider(),
            Sizes.size32.verticalSpace,
      
            const InsuranceProviderApplyWidget(),
            Sizes.size16.verticalSpace,
            const CustomDivider(),
            Sizes.size32.verticalSpace,
      
            const LocationApplyWidget(),
            Sizes.size16.verticalSpace,
            const CustomDivider(),
            Sizes.size32.verticalSpace,
      
            const SpecialtiesApplyWidget(),
            Sizes.size16.verticalSpace,
            const CustomDivider(),
            Sizes.size32.verticalSpace,
      
            const ClinicTypeApplyWidget(),
            Sizes.size16.verticalSpace,
            const CustomDivider(),
            Sizes.size32.verticalSpace,
      
            const RateAmountApplyBody(),
            Sizes.size16.verticalSpace,
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(
        navBarChildren:
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Expanded(
                  child: Consumer(
                    builder: (context, ref, _) => CustomButton(
                      text: AppStrings.reset,
                      textStyle: AppStyles.large(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.semiBoldWeight,),
                      backgroundColor: AppColors.color.kWhite002, borderColor: AppColors.color.kWhite001, borderWidth: (Sizes.size2).w,
                      onPressed: ()
                      {
                        log("Clear All Fields...");
                        ref.read(selectedFilterChoicesProvider.notifier).clearAll();
                        ref.read(clinicTypeCheckboxProvider.notifier).clearAll();
                        ref.read(insuranceCheckboxProvider.notifier).clearAll();
                        ref.read(ratingCheckboxProvider.notifier).clearAll();
                        ref.read(specialtyCheckboxProvider.notifier).clearAll();
                        ref.read(locationCheckboxProvider.notifier).clearAll();
                      },
                    ),
                  ),
                ),
                Sizes.size24.horizontalSpace,
                Expanded(
                  child: Consumer(
                    builder: (context, ref, _) => CustomButton(
                      text: AppStrings.showResults,
                      onPressed: ()
                      {
                        final selectedChoices = ref.read(selectedFilterChoicesProvider);
                        log('Selected filter choices: ${selectedChoices.map((c) => '{type: \\${c.type}, id: \\${c.id}, label: \\${c.label}, extra: \\${c.extra}}').join(', ')}');
                        AppRouter.router.pop();
                      },
                    ),
                  ),
                ),
              ],
            )
        ),
    );
  }
}
