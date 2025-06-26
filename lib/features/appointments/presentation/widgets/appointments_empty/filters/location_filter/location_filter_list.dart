import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../controller/filters_controllers/location/location_filter_controller.dart';
import 'location_filter_widget.dart';

class LocationFilterChooseListWidget extends ConsumerWidget
{
  const LocationFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncLocations = ref.watch(locationFilterProvider);
    return asyncLocations.when(
      data: (locations) => Column(
        children:
        [
          LocationFilterChooseWidget(locations: locations.map((e) => e.title ?? '').toList(),),
          Sizes.size5.verticalSpace,
          CustomDivider(endIndent: 20.w, indent: 30.w),
          Sizes.size5.verticalSpace,
        ],
      ),
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e,),
    );
  }
}