import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../controller/filters_controllers/clinic_type/clinic_type_filter_controller.dart';
import 'clinic_type_filter_widget.dart';

class ClinicTypeFilterChooseListWidget extends ConsumerWidget
{
  const ClinicTypeFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncClinicTypes = ref.watch(clinicTypeFilterProvider);
    return asyncClinicTypes.when(
      data: (clinicTypes) => CustomListviewBuilder(
        itemCount: clinicTypes.length,
        itemBuilder: (context, index) => ClinicTypeChooseWidget(
          index: index,
          clinicTypeName: clinicTypes[index].title ?? '',
          clinicTypeId: clinicTypes[index].id?.toString(),
        ),
        separatorBuilder: (context, index) => Column(
          children:
          [
            Sizes.size5.verticalSpace,
            CustomDivider(endIndent: 20.w, indent: 30.w),
            Sizes.size5.verticalSpace,
          ],
        ),
      ),
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }
}
