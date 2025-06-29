import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../domain/usecase/clinic_type_usecase.dart';
import '../../../widget/list_builder_separator_widget.dart';
import 'clinic_type_filter_widget.dart';

class ClinicTypeFilterChooseListWidget extends ConsumerWidget
{
  const ClinicTypeFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncClinicTypes = ref.watch(clinicTypeUseCaseProvider);
    return asyncClinicTypes.when(
      data: (clinicTypes) => CustomListviewBuilder(
        itemCount: clinicTypes.length,
        itemBuilder: (context, index) => ClinicTypeChooseWidget(
          index: index,
          clinicTypeName: clinicTypes[index].title ?? '',
          clinicTypeId: clinicTypes[index].id?.toString(),
        ),
        separatorBuilder: (context, index) => const ListBuilderSeparatorWidget(),
      ),
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }
}
