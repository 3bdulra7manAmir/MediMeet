import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import 'appointment_info/appointment_info.dart';
import 'appointment_info/calendar_widget.dart';

class AppointmentInfoBody extends StatelessWidget
{
  const AppointmentInfoBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const CalendarWidget(),
        Sizes.size16.verticalSpace,
        const AppointmentInfoWidget(),
      ],
    );
  }
}