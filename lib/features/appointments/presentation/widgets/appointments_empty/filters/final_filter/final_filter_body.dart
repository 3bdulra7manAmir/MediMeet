import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/divider.dart';
import '../../../../../../../core/widgets/popers/filters_modal_bottom_sheet.dart';
import 'clinic_type_widget.dart';
import 'final_filter_widget.dart';
import 'insurance_provider_widget.dart';
import 'location_widget.dart';
import 'rate_amount_widget.dart';
import 'specialties_widget.dart';

void showFinalFilterBottomModalSheet(BuildContext context)
{
  showFilterBottomModalSheet(
    context: context,
    appBarTitle: AppStrings.filters,
    children:
    [
      const InsuranceWidget(),
      Sizes.size16.verticalSpace,
      AppDivider(color: AppColors.color.kGrey005, thickness: (Sizes.size2).h,),
      Sizes.size32.verticalSpace,
      const InsuranceProviderWidget(),
      Sizes.size16.verticalSpace,
      AppDivider(color: AppColors.color.kGrey005, thickness: (Sizes.size2).h,),
      Sizes.size32.verticalSpace,
      const LocationWidget(),
      Sizes.size16.verticalSpace,
      AppDivider(color: AppColors.color.kGrey005, thickness: (Sizes.size2).h,),
      Sizes.size32.verticalSpace,
      const SpecialtiesWidget(),
      Sizes.size16.verticalSpace,
      AppDivider(color: AppColors.color.kGrey005, thickness: (Sizes.size2).h,),
      Sizes.size32.verticalSpace,
      const ClinicTypeWidget(),
      Sizes.size16.verticalSpace,
      AppDivider(color: AppColors.color.kGrey005, thickness: (Sizes.size2).h,),
      Sizes.size32.verticalSpace,
      const RateAmountWidget(),
    ],
    is2Buttons: true,
    buttonText: AppStrings.reset,
    buttonText2: AppStrings.showResults,
    onButtonPressed: ()
    {
      log("${AppStrings.filters}...Out");
      // You can navigate or apply filter logic here
    },
  );
}
