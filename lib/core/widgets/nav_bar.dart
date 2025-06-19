import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


import '../../config/theme/color_manager/colors.dart';
import '../constants/app_borders.dart';
import '../constants/app_images.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sizes.dart';
import '../constants/app_strings.dart';
import '../constants/app_styles.dart';
import 'icon_button.dart';
import '../../features/appointments_details/presentation/widgets/cancel_dialog.dart';

class NavBarWidget extends StatelessWidget
{
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.largeHorizontal,
      alignment: Alignment.center,
      width: 430.w,
      height: 105.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xsmall,
        color: AppColors.color.kWhite002,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Expanded(
            child: CustomIconButton(
              buttonText: AppStrings.cancel,
              buttonTextStyle: AppStyles.textStyle16(fontColor: AppColors.color.kRed001),
              buttonIcon: SvgPicture.asset(AppAssets.icons.cancelRed),
              buttonOnPressed: () => showCancelDialog(context),
              buttonBackgroundColor: AppColors.color.kWhite002,
              buttonBorderWidth: Sizes.size4,
              buttonBorderColor: AppColors.color.kWhite001,
            ),
          ),
          Sizes.size16.horizontalSpace,
          Expanded(
            child: CustomIconButton(
              buttonText: AppStrings.edit,
              buttonIcon: SvgPicture.asset(AppAssets.icons.editPensileWhite),
              buttonOnPressed: () => log("Edit"),
            ),
          ),
        ],
      ),
    );
  }
}