import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../../presentation/controller/filters_controllers/insurance_provider_filter_controller.dart';
import 'insurance_filter_widget.dart';

class InsuranceFilterChooseListWidget extends ConsumerWidget {
  const InsuranceFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncInsurances = ref.watch(insuranceProviderFilterProvider);
    return asyncInsurances.when(
      data: (insurances) => CustomListviewBuilder(
        itemCount: insurances.length,
        itemBuilder: (context, index) => InsuranceFilterChooseWidget(
          index: index,
          insuranceName: insurances[index].title ?? '',
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
