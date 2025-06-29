import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_margins.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../domain/usecase/info_usecase.dart';


class AppointmentInfoWidget extends ConsumerWidget
{
  const AppointmentInfoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final detailsAsync = ref.watch(detailsUseCaseProvider);
    return detailsAsync.when(
      data: (details)
      {
        final info = details.isNotEmpty ? details.first : null;
        if (info == null) return const CustomCircularIndicator();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                Text(info.detailsTitle ?? '', style: AppStyles.xXLarge(fontColor: AppColors.color.kBlack003)),
                const Spacer(),
                Container(
                  margin: AppMargins.directional.smallEnd,
                  padding: AppPadding.symmetric.mediumH,
                  height: 29.h,
                  decoration: BoxDecoration(color: AppColors.color.kGrey003, borderRadius: AppRadiuses.circular.medium,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Image.asset(AppAssets.icons.hartPNG),
                      Sizes.size4.horizontalSpace,
                      Text(info.detailsCategory ?? '', style: AppStyles.medium(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kBlack001)),
                    ],
                  ),
                ),
              ],
            ),
            Sizes.size8.verticalSpace,
            Text(info.detailsDateTime ?? '', style: AppStyles.large()),
          ],
        );
      },
      loading: () => const CustomCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}