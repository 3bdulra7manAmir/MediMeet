import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medical_appointments/core/widgets/circular_indicator.dart';
import 'package:medical_appointments/core/widgets/error_widget.dart';
import '../../controller/appointments_info_controller.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';


class AppointmentInfoWidget extends ConsumerWidget
{
  const AppointmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final detailsAsync = ref.watch(detailsProvider);

    return detailsAsync.when(
      data: (details)
      {
        final info = details.isNotEmpty ? details.first : null;
        if (info == null) return const AppCircularIndicator();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text(info.detailsTitle ?? '', style: AppStyles.textStyle20(fontColor: AppColors.color.kBlack003)),
                Container(
                  width: 110.w,
                  height: 29.h,
                  decoration: BoxDecoration(color: AppColors.color.kGrey003, borderRadius: AppRadiuses.circular.medium,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Image.asset(AppAssets.icons.hartPNG),
                      Sizes.size4.horizontalSpace,
                      Text(info.detailsCategory ?? '', style: AppStyles.textStyle14(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack001)),
                    ],
                  ),
                ),
              ],
            ),
            Sizes.size8.verticalSpace,
            Text(info.detailsDateTime ?? '', style: AppStyles.textStyle16()),
          ],
        );
      },
      loading: () => const AppCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}