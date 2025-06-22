import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../config/router/app_router.dart';
import '../../../../../../config/router/app_routes.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';

class AppointmentOptionsWidget extends StatelessWidget
{
  const AppointmentOptionsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(
          child: CustomButton(
            buttonText: AppStrings.viewDetails, 
            buttonTextStyle: AppStyles.small(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kWhite002),
            buttonBackgroundColor: AppColors.color.kGreen003,
            buttonBorderRadius: AppRadiuses.circular.large,
            buttonOnPressed: () => AppRouter.router.pushNamed(AppRoutes.appointmentsDetails),
            buttonHeight: 40.h,
          ),
        ),
        Sizes.size12.horizontalSpace,
        SvgPicture.asset(AppAssets.icons.locationGreen),
        Sizes.size12.horizontalSpace,
        SvgPicture.asset(AppAssets.icons.editPensileGreen),
        Sizes.size12.horizontalSpace,
        SvgPicture.asset(AppAssets.icons.cancelGreen)
      ],
    );
  }
}