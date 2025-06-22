import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../data/model/past_appointments.dart';
import 'past_appointment/date_widget.dart';
import 'past_appointment/info_widget.dart';

class PastAppointmentWidget extends StatelessWidget
{
  final PastModel model;
  const PastAppointmentWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context)
  {
    return Card(
      color: AppColors.color.kWhite005,
      child: Row(
        children:
        [
          PastDateWidget(dateTime: model.pastDateTime ?? ''),
          Sizes.size16.horizontalSpace,
          Expanded(child: PastAppointmentInfoWidget(model: model)),
        ],
      ),
    );
  }
}


