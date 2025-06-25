import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';


import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../controller/appointment_controllers/upcoming_appointment_controller.dart';
import 'upcoming_appointment/upcoming_appointment_options_widget.dart';
import 'upcoming_appointment/upcoming_date_widget.dart';

class UpcomingAppointmentWidget extends ConsumerWidget
{
  const UpcomingAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final upcomingAsync = ref.watch(upcomingAppointmentsProvider);

    return upcomingAsync.when(
      loading: () => const CustomCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
      data: (appointments)
      {
        if (appointments.isEmpty)
        {
          return const CustomCircularIndicator();
        }
        final model = appointments.first;
        return Card(
          color: AppColors.color.kGreen001,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Row(
                children:
                [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      Text(model.upComingTitle ?? '', style: AppStyles.xLarge()),
                      Text(model.upComingDateTime ?? '', style: AppStyles.small()),
                    ],
                  ),
                  const Spacer(),
                  UpComingDateWidget(dateTime: model.upComingDateTime ?? ''),
                ],
              ),
              Sizes.size8.verticalSpace,
              Text(model.upComingLocation ?? '', style: AppStyles.medium(fontColor: AppColors.color.kWhite003),),
              Sizes.size24.verticalSpace,
              const AppointmentOptionsWidget(),
            ],
          ).paddingSymmetric(horizontal: 16.w, vertical: 16.h),
        );
      },
    );
  }
}
