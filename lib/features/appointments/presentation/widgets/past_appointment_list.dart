import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/listview_builder.dart';
import 'past_appointment.dart';

class PastAppointmentList extends StatelessWidget
{
  const PastAppointmentList({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      itemBuilder: (context, index) => const PastAppointmentWidget(),
      separatorBuilder: (context, index) => Sizes.size16.verticalSpace,
      itemCount: 6,
    );
  }
}