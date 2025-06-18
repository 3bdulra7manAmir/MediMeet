import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/button.dart';
import '../../../../core/widgets/divider.dart';


class UpcomingAppointmentWidget extends StatelessWidget
{
  const UpcomingAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kGreen001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Row(
            children:
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text("Al Noor Medical Center", style: AppStyles.textStyle18(),),
                  Text("Monday, June 3, 2025 - 4:00 PM ", style: AppStyles.textStyle12(),),
                ],
              ),
              Spacer(),
              CustomDateWidget(),
            ],
          ),
          Sizes.size8.verticalSpace,
          Text("📍 Riyadh – King Abdulaziz Road, Building 12", style: AppStyles.textStyle14(fontColor: AppColors.color.kWhite003),),
          Sizes.size24.verticalSpace,
          AppointmentOptionsWidget(),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }
}


class CustomDateWidget extends StatelessWidget
{
  const CustomDateWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 48.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.color.kGreen002,),
        borderRadius: AppRadiuses.circular.xsmall,
        color: AppColors.color.kGreen001,
      ),
      child: Column(
        children:
        [
          Text("Jun", style: AppStyles.textStyle12(fontColor: AppColors.color.kWhite004), textAlign: TextAlign.center).paddingDirectionalOnly(top: 2.h),
          AppDivider(),
          Text("3", style: AppStyles.textStyle20(fontColor: AppColors.color.kWhite004), textAlign: TextAlign.center,).paddingDirectionalOnly(bottom: 3.h),
        ],
      ),
    );
  }
}


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
            buttonTextStyle: AppStyles.textStyle12(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kWhite002),
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