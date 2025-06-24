import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../../core/widgets/divider.dart';
import '../../../../../../../core/widgets/nav_bar.dart';
import 'clinic_type_widget.dart';
import 'insurance_provider_widget.dart';
import 'location_widget.dart';
import 'main_filter_has_insurance_widget.dart';
import 'rate_amount_widget.dart';
import 'specialties_widget.dart';

class ModalSheetMainScreen extends StatelessWidget
{
  final String appBarTitle;
  const ModalSheetMainScreen({super.key, required this.appBarTitle});

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
            FiltersAppbar(appbarText: appBarTitle),
            Sizes.size24.verticalSpace,
      
            const HasInsuranceWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kGrey005, thickness: Sizes.size2.h),
            Sizes.size32.verticalSpace,
      
            const InsuranceProviderWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kGrey005, thickness: Sizes.size2.h),
            Sizes.size32.verticalSpace,
      
            const LocationWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kGrey005, thickness: Sizes.size2.h),
            Sizes.size32.verticalSpace,
      
            const SpecialtiesWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kGrey005, thickness: Sizes.size2.h),
            Sizes.size32.verticalSpace,
      
            const ClinicTypeWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kGrey005, thickness: Sizes.size2.h),
            Sizes.size32.verticalSpace,
      
            const RateAmountWidget(),
            Sizes.size16.verticalSpace,
          ],
        ),
      ),
      bottomNavigationBar: NavBarWidget(
        navBarChildren:
        [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                CustomButton(
                  text: AppStrings.reset, width: 171.w,
                  textStyle: AppStyles.large(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.semiBoldWeight,),
                  backgroundColor: AppColors.color.kWhite002, borderColor: AppColors.color.kWhite001, borderWidth: (Sizes.size2).w,
                  onPressed: () {},
                ),
                Sizes.size24.horizontalSpace,
                CustomButton(text: AppStrings.showResults, onPressed: () {},),
              ],
            )
          ],
        ),
    );
  }
}
