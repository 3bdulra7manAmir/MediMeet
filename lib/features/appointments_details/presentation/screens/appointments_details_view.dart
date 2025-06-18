import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';
import 'package:medical_appointments/features/appointments_details/presentation/widgets/appointment_billing.dart';
import 'package:medical_appointments/features/appointments_details/presentation/widgets/appointment_info.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/widgets/appbar.dart';
import '../widgets/calendar_container.dart';

class AppointmentsDetails extends StatelessWidget
{
  const AppointmentsDetails({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: CustomAppBar(barTitle: Text(AppStrings.appointmentsDetails, style: AppStyles.textStyle24(),).paddingDirectionalOnly()),
      body: Column(
        children:
        [
          Sizes.size16.verticalSpace,
          CalendarWidget(),
          Sizes.size16.verticalSpace,
          AppointmentInfoWidget(),
          Sizes.size32.verticalSpace,
          AppointmentBillingWidget(),
          Sizes.size32.verticalSpace,

        ],
      ).paddingSymmetric(),
    );
  }
}