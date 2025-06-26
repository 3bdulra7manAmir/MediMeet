import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../../presentation/controller/filters_controllers/clinic_type_filter_controller.dart';
import 'clinic_type_filter_widget.dart';

class ClinicTypeFilterChooseListWidget extends ConsumerWidget {
  const ClinicTypeFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncClinicTypes = ref.watch(clinicTypeFilterProvider);
    return asyncClinicTypes.when(
      data: (clinicTypes) => CustomListviewBuilder(
        itemCount: clinicTypes.length,
        itemBuilder: (context, index) => ClinicTypeChooseWidget(
          index: index,
          clinicTypeName: clinicTypes[index].title ?? '',
        ),
        separatorBuilder: (context, index) => Column(
          children: [
            Sizes.size5.verticalSpace,
            CustomDivider(endIndent: 20.w, indent: 30.w),
            Sizes.size5.verticalSpace,
          ],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: ${e.toString()}')),
    );
  }
}
