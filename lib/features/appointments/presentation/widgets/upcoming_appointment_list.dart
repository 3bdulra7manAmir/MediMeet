import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import 'upcoming_appointment_body.dart';

class UpcomingAppointmentList extends StatelessWidget
{
  const UpcomingAppointmentList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => SizedBox(width: 398.w, child: const UpcomingAppointmentWidget()),
      separatorBuilder: (context, index) => Sizes.size0.horizontalSpace,
      itemCount: 5,
    );
  }
}
