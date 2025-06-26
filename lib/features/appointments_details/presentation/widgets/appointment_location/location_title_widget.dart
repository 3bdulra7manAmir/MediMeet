import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_sizes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/app_styles.dart';
import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../controller/appointments_location_controller.dart';

class LocationTitleWidget extends ConsumerWidget
{
  const LocationTitleWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final locationAsync = ref.watch(locationProvider);
    return locationAsync.when(
      data: (locations)
      {
        final location = locations.isNotEmpty ? locations.first : null;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Text(AppStrings.location, style: AppStyles.xLarge(fontColor: AppColors.color.kBlack001)),
            Sizes.size8.verticalSpace,
            Text(location?.locationTitle ?? '', style: AppStyles.large()),
          ],
        );
      },
      loading: () => const CustomCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}