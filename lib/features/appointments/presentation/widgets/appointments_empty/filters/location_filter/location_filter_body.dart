import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../../core/widgets/nav_bar.dart';
import 'location_filter_widget.dart';

class LocationFilter extends StatelessWidget
{
  const LocationFilter({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: AppColors.color.kWhite002,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Sizes.size16.verticalSpace,
          const FiltersAppbar(appbarText: AppStrings.location),
          Sizes.size24.verticalSpace,
          const LocationFilterWidget(),
        ],
      ),
      bottomNavigationBar: NavBarWidget(
        navBarChildren:
        Expanded(
          child: CustomButton(text: AppStrings.addFilter, onPressed: () => ModalSheetRouter.router.pop(),),
        ),
      ),
    );
  }
}
