import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import 'upcoming_appointment/upcoming_appointment_options_widget.dart';
import 'upcoming_appointment/upcoming_date_widget.dart';


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
              const Spacer(),
              const UpComingDateWidget(),
            ],
          ),
          Sizes.size8.verticalSpace,
          Text("📍 Riyadh – King Abdulaziz Road, Building 12", style: AppStyles.textStyle14(fontColor: AppColors.color.kWhite003),),
          Sizes.size24.verticalSpace,
          const AppointmentOptionsWidget(),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }
}


