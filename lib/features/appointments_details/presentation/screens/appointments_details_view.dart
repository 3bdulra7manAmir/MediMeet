import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_appointments/core/extensions/widget_margin.dart';

import '../../../../config/router/app_router/app_router.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbars/app_appbar.dart';
import '../../../../core/widgets/buttons/icon_button.dart';
import '../../../../core/widgets/divider.dart';
import '../widgets/appointment_billing_body.dart';
import '../widgets/appointment_info_body.dart';
import '../widgets/appointment_location_body.dart';
import '../../../../core/widgets/nav_bar.dart';
import '../widgets/cancel_dialog.dart';

class AppointmentsDetails extends StatelessWidget
{
  const AppointmentsDetails({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            GestureDetector(
              onTap: () => AppRouter.router.pop(), child: SvgPicture.asset(AppAssets.icons.arrowLeft),),
            Sizes.size8.verticalSpace,
            Text(AppStrings.appointmentsDetails, style: AppStyles.xXXLarge(),),
          ],
        ), isPaddingTop: true, toolbarHeight: (16 + 24).h, isDefaultBack: false, ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            const AppointmentInfoBody(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kWhite003, thickness: 2.h,),
            Sizes.size16.verticalSpace,
            const AppointmentBillingWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kWhite003, thickness: 2.h,),
            Sizes.size16.verticalSpace,
            const AppointmentLocationWidget(),
          ],
        ).marginSymmetric(horizontal: 16.w),
      ),
      bottomNavigationBar: NavBarWidget(
        navBarChildren:
        Row(
          children:
          [
            Expanded(
              child: CustomIconButton(
                buttonText: AppStrings.cancel,
                buttonTextStyle: AppStyles.large(fontColor: AppColors.color.kRed001),
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
          ]
        ),
      ),
    );
  }
}