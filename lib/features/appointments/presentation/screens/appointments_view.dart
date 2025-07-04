import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbars/app_appbar.dart';
import '../widgets/appointments/past_appointment_list.dart';
import '../widgets/appointments/upcoming_appointment_body.dart';

class Appointments extends StatelessWidget
{
  const Appointments({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(
        barTitle: Text(AppStrings.myAppointments, style: AppStyles.xXXLarge(),), 
        isPaddingTop: true, toolbarHeight: (24 + 24).h, isDefaultBack: true,),
      body: CustomScrollView(
        slivers:
        [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(AppStrings.upComingAppointments, style: AppStyles.xXLarge(),).paddingDirectionalOnly(start: 16.w),
                Sizes.size16.verticalSpace,
                const UpcomingAppointmentWidget(),
              ],
            ),
          ),
          
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Sizes.size24.verticalSpace,
                Text(AppStrings.pastAppointments, style: AppStyles.xXLarge(),).paddingDirectionalOnly(start: 16.w),
                Sizes.size16.verticalSpace,
              ],
            ),
          ),
          const PastAppointmentList(),
          SliverToBoxAdapter(child: Sizes.size24.verticalSpace),
        ],
      ),
    );
  }
}
