import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar.dart';
import '../../../../core/widgets/divider.dart';
import '../widgets/appointment_billing.dart';
import '../widgets/appointment_info.dart';
import '../widgets/appointment_location.dart';
import '../widgets/calendar_container.dart';
import '../widgets/cancel_nav_bar.dart';

class AppointmentsDetails extends StatelessWidget
{
  const AppointmentsDetails({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: Text(AppStrings.appointmentsDetails, style: AppStyles.textStyle24(),).paddingDirectionalOnly()),
      bottomNavigationBar: NavBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Sizes.size16.verticalSpace,
            CalendarWidget(),
            Sizes.size16.verticalSpace,
            AppointmentInfoWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kWhite003, thickness: 2.h,),
            Sizes.size16.verticalSpace,
            AppointmentBillingWidget(),
            Sizes.size16.verticalSpace,
            AppDivider(color: AppColors.color.kWhite003, thickness: 2.h,),
            Sizes.size16.verticalSpace,
            AppointmentLocationWidget(),
          ],
        ).paddingSymmetric(horizontal: 16.w),
      ),
    );
  }
}