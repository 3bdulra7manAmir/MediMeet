import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../controller/appointments_bill_controller.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';


class IDWidget extends ConsumerWidget
{
  const IDWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final billAsync = ref.watch(billProvider);
    return billAsync.when(
      data: (bills)
      {
        final bill = bills.isNotEmpty ? bills.first : null;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text(AppStrings.appointmentID, style: AppStyles.medium(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight)),
            Text(bill?.billID ?? '', style: AppStyles.large(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight)),
          ],
        );
      },
      loading: () => const CustomCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}