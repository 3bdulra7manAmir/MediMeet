import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';


class AppointmentBillingWidget extends StatelessWidget
{
  const AppointmentBillingWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("Bill Details", style: AppStyles.textStyle18(fontColor: AppColors.color.kBlack001),),
        Sizes.size12.verticalSpace,
        IDWidget(),
        Sizes.size8.verticalSpace,
        BillAmountWidget(),
        Sizes.size8.verticalSpace,
        StatusWidget(),
      ],
    );
  }
}


class IDWidget extends StatelessWidget
{
  const IDWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("Appointment ID", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Text("#JZ-48291", style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),)
      ],
    );
  }
}


class BillAmountWidget extends StatelessWidget
{
  const BillAmountWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text("Bill amount", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Spacer(),
        Row(
          children:
          [
            SvgPicture.asset(AppAssets.icons.saudiRiyal),
            Sizes.size4.horizontalSpace,
            Text("250", style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),),
          ],
        )
      ],
    );
  }
}


class StatusWidget extends StatelessWidget
{
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("Status", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Container(
          width: 72.w,
          height: 28.h,
          decoration: BoxDecoration(
            color: AppColors.color.kGreen004,
            borderRadius: AppRadiuses.circular.xMedium,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              SvgPicture.asset(AppAssets.icons.correctGreen),
              Sizes.size4.horizontalSpace,
              Text("Paid", style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kGreen005),)
            ],
          ),
        )
      ],
    );
  }
}