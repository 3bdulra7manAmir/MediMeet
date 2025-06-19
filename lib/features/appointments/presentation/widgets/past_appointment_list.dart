import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/circular_indicator.dart';
import '../../../../core/widgets/error_widget.dart';
import '../../../../core/widgets/listview_builder.dart';
import '../controller/past_appointment_controller.dart';
import 'past_appointment_body.dart';

class PastAppointmentList extends ConsumerWidget
{
  const PastAppointmentList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final pastAsync = ref.watch(pastAppointmentsProvider);
    return pastAsync.when(
      data: (appointments)
      {
        final items = appointments;
        return AppListviewBuilder(
          itemBuilder: (context, index) => PastAppointmentWidget(model: items[index]),
          separatorBuilder: (context, index) => Sizes.size16.verticalSpace,
          itemCount: items.length,
        );
      },
      loading: () => const AppCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}