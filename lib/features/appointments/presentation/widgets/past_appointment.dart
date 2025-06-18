import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import 'past_appointment/date_widget.dart';
import 'past_appointment/past_appointment_info_widget.dart';

class PastAppointmentWidget extends StatelessWidget
{
  const PastAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kWhite005,
      child: Row(
        children:
        [
          const PastDateWidget(),
          Sizes.size16.horizontalSpace,
          const PastAppointmentInfoWidget(),
        ],
      ),
    );
  }
}


