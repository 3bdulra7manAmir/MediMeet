import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../controller/insurance_provider/insurance_provider_filter_controller.dart';
import '../../../widget/list_builder_separator_widget.dart';
import 'insurance_filter_widget.dart';

class InsuranceFilterChooseListWidget extends ConsumerWidget
{
  const InsuranceFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncInsurances = ref.watch(insuranceProviderFilterProvider);
    return asyncInsurances.when(
      data: (insurances) => CustomListviewBuilder(
        itemCount: insurances.length,
        itemBuilder: (context, index) => InsuranceFilterChooseWidget(
          index: index,
          insuranceName: insurances[index].title ?? '',
          insuranceId: insurances[index].id?.toString(),
        ),
        separatorBuilder: (context, index) => const ListBuilderSeparatorWidget(),
      ),
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }
}
