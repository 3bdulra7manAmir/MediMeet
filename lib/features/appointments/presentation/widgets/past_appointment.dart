import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';

class PastAppointmentWidget extends StatelessWidget
{
  const PastAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kWhite005,
      child: Row(
        children:
        [
          DateTimeWidget(),
          Sizes.size16.horizontalSpace,
          PastAppointmentInfoWidget(),
        ],
      ),
    );
  }
}


class DateTimeWidget extends StatelessWidget
{
  const DateTimeWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.color.kBlue002,
        borderRadius: AppRadiuses.only.xSmall
      ),
      child: Column(
        children:
        [
          Text("May", style: AppStyles.textStyle16(fontColor: AppColors.color.kWhite002),),
          Sizes.size4.verticalSpace,
          Text("22", style: AppStyles.textStyle18(),),
        ],
      ).paddingSymmetric(horizontal: (16.5).w, vertical: (44.5).h),
    );
  }
}


class PastAppointmentInfoWidget extends StatelessWidget
{
  const PastAppointmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("Al Abeer Clinic", style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),),
        Sizes.size4.verticalSpace,
        Text("Pediatrics", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Sizes.size4.verticalSpace,
        Text("1:30 PM", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Sizes.size8.verticalSpace,
        //NoRateWidget(),
        RateWidget(),
      ],
    );
  }
}


class NoRateWidget extends StatelessWidget
{
  const NoRateWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 105.w,
      height: 36.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xsmall,
        border: Border.all(color: AppColors.color.kBlue003),
        color: AppColors.color.kWhite006
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          SvgPicture.asset(AppAssets.icons.emptyRate),
          Sizes.size4.horizontalSpace,
          Text(AppStrings.rateVisit, style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack002),)
        ],
      ),
    );
  }
}


class RateWidget extends StatelessWidget
{
  const RateWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
      [
        SvgPicture.asset(AppAssets.icons.filledRate),
        Sizes.size4.horizontalSpace,
        Text("4.5 – ", style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),),
        Text("Very professional and friendly.", style: AppStyles.textStyle14(fontWeight: AppFontWeights.regularWeight, fontColor: AppColors.color.kGrey002),
          maxLines: 1, overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

