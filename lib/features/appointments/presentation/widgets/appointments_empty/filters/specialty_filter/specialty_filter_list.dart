import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../controller/filters_controllers/specialty/specialty_filter_controller.dart';
import 'specialty_filter_widget.dart';

class SpecialtyFilterChooseListWidget extends ConsumerWidget
{
  const SpecialtyFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncSpecialties = ref.watch(specialtyFilterProvider);
    return asyncSpecialties.when
    (
      data: (specialties) => CustomListviewBuilder
      (
        itemCount: specialties.length,
        itemBuilder: (context, index) => SpecialtyFilterChooseWidget
        (
          index: index,
          specialtyName: specialties[index].title ?? '',
        ),
        separatorBuilder: (context, index) => Column
        (
          children:
          [
            Sizes.size5.verticalSpace,
            CustomDivider(endIndent: 20.w, indent: 30.w),
            Sizes.size5.verticalSpace,
          ],
        ),
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, st) => Center(child: Text('Error: \\${e.toString()}')),
    );
  }
}
