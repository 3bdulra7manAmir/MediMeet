// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_styles.dart';
import 'status_failed_widget.dart';
import 'status_in_progress_widget.dart';
import 'status_paid_widget.dart';

class StatusWidget extends StatelessWidget
{
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text("Status", style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight),),
        const StatusPaidWidget(),
        //const StatusInPrograssWidget(),
        //const StatusFailedWidget(),
      ],
    );
  }
}

