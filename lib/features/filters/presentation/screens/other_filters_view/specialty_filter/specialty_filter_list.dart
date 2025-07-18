import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../domain/usecase/specialty_usecase.dart';
import 'specialty_filter_widget.dart';

class SpecialtyFilterChooseListWidget extends ConsumerWidget
{
  const SpecialtyFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncSpecialties = ref.watch(specialtyUseCaseProvider);
    return asyncSpecialties.when
    (
      data: (specialties) => CustomListviewBuilder
      (
        itemCount: specialties.length,
        itemBuilder: (context, index) => SpecialtyFilterChooseWidget(
          index: index,
          specialtyName: specialties[index].title ?? '',
          specialtyId: specialties[index].id?.toString(),
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
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }
}
