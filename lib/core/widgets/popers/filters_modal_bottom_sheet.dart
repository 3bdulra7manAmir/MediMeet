import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../core/constants/app_margins.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../../core/widgets/nav_bar.dart';
import '../../../../../../../core/widgets/popers/modal_bottom_sheet.dart';

void showFilterBottomModalSheet({
  required BuildContext context,
  required String appBarTitle,
  required List<Widget> children,
  required String buttonText,
  required VoidCallback onButtonPressed,
}) {
  showAppBottomSheet(
    context: context,
    builder: (context) => Container(
      height: 860.h,
      margin: AppMargins.symmetric.xMedium,
      decoration: BoxDecoration(borderRadius: AppRadiuses.only.meduim,),
      child: Scaffold(
        backgroundColor: AppColors.color.kWhite002,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size16.verticalSpace,
            FiltersAppbar(appbarText: appBarTitle),
            Sizes.size24.verticalSpace,
            ...children,
          ],
        ),
        bottomNavigationBar: NavBarWidget(
          navBarChildren:
          [
            Expanded(child: CustomButton(buttonText: buttonText, buttonOnPressed: onButtonPressed,),),
          ],
        ),
      ),
    ),
  );
}
