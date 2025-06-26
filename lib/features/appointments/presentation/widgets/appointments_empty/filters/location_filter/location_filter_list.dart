import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../presentation/controller/filters_controllers/location_filter_controller.dart';
import 'location_filter_widget.dart';

class LocationFilterChooseListWidget extends ConsumerWidget {
  const LocationFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLocations = ref.watch(locationFilterProvider);
    return asyncLocations.when(
      data: (locations) => Column(
        children: [
          LocationFilterChooseWidget(
            locations: locations.map((e) => e.title ?? '').toList(),
          ),
          Sizes.size5.verticalSpace,
          CustomDivider(endIndent: 20.w, indent: 30.w),
          Sizes.size5.verticalSpace,
        ],
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: ${e.toString()}')),
    );
  }
}