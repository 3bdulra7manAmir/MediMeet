import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_margin.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbars/app_appbar.dart';
import '../widgets/appointments_empty/calendar_image_widget.dart';
import '../widgets/appointments_empty/clinics_button_widget.dart';

class AppointmentsEmpty extends StatelessWidget
{
  const AppointmentsEmpty({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: Text(AppStrings.myAppointments, style: AppStyles.xXXLarge(),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Column(
              children:
              [
                const CalendarImageWidget(),
                Sizes.size8.verticalSpace,
                Text(AppStrings.uDontHaveAnyAppointments, style: AppStyles.xXLarge(), textAlign: TextAlign.center, maxLines: 2,),
                Sizes.size8.verticalSpace,
                Text(AppStrings.startExploringClinics, style: AppStyles.large(), textAlign: TextAlign.center, maxLines: 2,),
                Sizes.size16.verticalSpace,
                const ExploreClinicsButtonWidget(),
              ],
            ),
          ],
        ).marginSymmetric(horizontal: 16.w,),
      ),
    );
  }
}