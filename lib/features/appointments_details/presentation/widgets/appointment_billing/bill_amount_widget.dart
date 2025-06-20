import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/widgets/circular_indicator.dart';
import '../../../../../core/widgets/error_widget.dart';
import '../../controller/appointments_bill_controller.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';


class BillAmountWidget extends ConsumerWidget
{
  const BillAmountWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final billAsync = ref.watch(billProvider);
    return billAsync.when(
      data: (bills)
      {
        final bill = bills.isNotEmpty ? bills.first : null;
        return Row(
          children:
          [
            Text(AppStrings.billAmount, style: AppStyles.textStyle14(fontColor: AppColors.color.kGrey002, fontWeight: AppFontWeights.regularWeight)),
            const Spacer(),
            Row(
              children:
              [
                Image.asset(AppAssets.icons.saudiRiyalPNG),
                Sizes.size4.horizontalSpace,
                Text(bill?.billPrice ?? '', style: AppStyles.textStyle16(fontColor: AppColors.color.kBlack001, fontWeight: AppFontWeights.mediumWeight)),
              ],
            )
          ],
        );
      },
      loading: () => const AppCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}