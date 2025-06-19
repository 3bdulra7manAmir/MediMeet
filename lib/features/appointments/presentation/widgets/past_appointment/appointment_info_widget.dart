import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/string.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../data/model/past_appointments.dart';
import 'rate_widget.dart';

class PastAppointmentInfoWidget extends StatelessWidget
{
  final PastModel model;
  const PastAppointmentInfoWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text(model.pastTitle ?? '', style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight),),
        Sizes.size4.verticalSpace,
        Text(model.pastCategory ?? '', style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Sizes.size4.verticalSpace,
        Text(model.pastDateTime?.toTime ?? '', style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        Sizes.size8.verticalSpace,
        RateWidget(rate: model.pastRate, description: model.pastRateDescription),
      ],
    );
  }
}