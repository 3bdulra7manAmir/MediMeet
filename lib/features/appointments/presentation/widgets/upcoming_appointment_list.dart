import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/circular_indicator.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/listview_builder.dart';
import 'upcoming_appointment_body.dart';
import '../controller/upcoming_appointment_controller.dart';

class UpcomingAppointmentList extends ConsumerWidget
{
  const UpcomingAppointmentList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final upcomingAsync = ref.watch(upcomingAppointmentsProvider);
    return upcomingAsync.when(
      data: (appointments)
      {
        final items = appointments;
        return AppListviewBuilder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SizedBox(width: 398.w, child: UpcomingAppointmentWidget(model: items[index])),
          separatorBuilder: (context, index) => Sizes.size0.horizontalSpace,
          itemCount: items.length,
        );
      },
      loading: () => const AppCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}
