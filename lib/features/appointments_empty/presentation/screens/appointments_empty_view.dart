import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_margin.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar.dart';
import '../widgets/calendar_image_widget.dart';
import '../widgets/clinics_button_widget.dart';

class AppointmentsEmpty extends StatelessWidget
{
  const AppointmentsEmpty({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: Text(AppStrings.myAppointments, style: AppStyles.textStyle24(),),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Column(
              children:
              [
                const CalendarImage(),
                Sizes.size8.verticalSpace,
                Text(AppStrings.uDontHaveAnyAppointments, style: AppStyles.textStyle20(), textAlign: TextAlign.center, maxLines: 2,),
                Sizes.size8.verticalSpace,
                Text(AppStrings.startExploringClinics, style: AppStyles.textStyle16(), textAlign: TextAlign.center, maxLines: 2,),
                Sizes.size16.verticalSpace,
                const ExploreClinicsButton(),
              ],
            ),
          ],
        ).marginSymmetric(horizontal: 16.w,),
      ),
    );
  }
}