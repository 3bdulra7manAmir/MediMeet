import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/constants/app_styles.dart';
import 'appointment_billing/bill_amount_widget.dart';
import 'appointment_billing/id_widget.dart';
import 'appointment_billing/status_widget.dart';


class AppointmentBillingWidget extends StatelessWidget
{
  const AppointmentBillingWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Text("Bill Details", style: AppStyles.textStyle18(fontColor: AppColors.color.kBlack001),),
        Sizes.size12.verticalSpace,
        const IDWidget(),
        Sizes.size8.verticalSpace,
        const BillAmountWidget(),
        Sizes.size8.verticalSpace,
        const StatusWidget(),
      ],
    );
  }
}










