import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';


import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar.dart';
import '../widgets/past_appointment.dart';
import '../widgets/upcoming_appointment.dart';

class Appointments extends StatelessWidget
{
  const Appointments({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: Text(AppStrings.myAppointments, style: AppStyles.textStyle24(),),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Sizes.size24.verticalSpace,
          Text(AppStrings.upComingAppointments, style: AppStyles.textStyle20(),).paddingDirectionalOnly(start: 16.w),
          Sizes.size16.verticalSpace,
          UpcomingAppointmentWidget(),
          Sizes.size24.verticalSpace,
          Text(AppStrings.pastAppointments, style: AppStyles.textStyle20(),).paddingDirectionalOnly(start: 16.w),
          Sizes.size16.verticalSpace,
          PastAppointmentWidget(),
        ],
      ),
    );
  }
}