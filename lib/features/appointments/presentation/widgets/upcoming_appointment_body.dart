import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import 'upcoming_appointment/upcoming_appointment_options_widget.dart';
import 'upcoming_appointment/upcoming_date_widget.dart';
import '../../data/model/upcoming_appointments.dart';

class UpcomingAppointmentWidget extends StatelessWidget
{
  final UpComingModel model;
  const UpcomingAppointmentWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kGreen001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Row(
            children:
            [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Text(model.upComingTitle ?? '', style: AppStyles.textStyle18(),),
                    Text(model.upComingDateTime ?? '', style: AppStyles.textStyle12(),),
                  ],
                ),
              ),
              UpComingDateWidget(dateTime: model.upComingDateTime ?? ''),
            ],
          ),
          Sizes.size8.verticalSpace,
          Text(model.upComingLocation ?? '', style: AppStyles.textStyle14(fontColor: AppColors.color.kWhite003),),
          Sizes.size24.verticalSpace,
          const AppointmentOptionsWidget(),
        ],
      ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
    );
  }
}


