import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/circular_indicator.dart';
import '../../../../../core/widgets/error_widget.dart';
import '../../../data/model/appointment_bill.dart';
import '../../controller/appointments_bill_controller.dart';
import 'status_paid_widget.dart';
import 'status_failed_widget.dart';
import 'status_in_progress_widget.dart';

class StatusWidget extends ConsumerWidget
{
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final billAsync = ref.watch(billProvider);
    return billAsync.when(
      data: (bills)
      {
        final bill = bills.isNotEmpty ? bills.first : null;
        if (bill == null) return const AppCircularIndicator();

        final StatelessWidget statusWidget = statusWidgetChecker(bill);
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text(AppStrings.status, style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight,),),
            statusWidget,
          ],
        );
      },
      loading: () => const AppCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }

  StatelessWidget statusWidgetChecker(BillingModel bill)
  {
    final statusWidget = switch (bill.billStatus?.toLowerCase())
    {
      'paid' => const StatusPaidWidget(),
      'failed' => const StatusFailedWidget(),
      'inprogress' => const StatusInPrograssWidget(),
      _ => const AppCircularIndicator(),
    };
    return statusWidget;
  }
}
