import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../controller/filters_controllers/shared_checkbox_notifier.dart';

class CheckBoxWidget extends ConsumerWidget
{
  const CheckBoxWidget({
    super.key,
    required this.index,
    required this.provider,
    this.onChanged,
  });

  final int index;
  final StateNotifierProvider<CheckboxValuesNotifier, Map<int, bool>> provider;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final checkboxState = ref.watch(provider);
    final isChecked = checkboxState[index] ?? false;
    return Checkbox(
      value: isChecked,
      onChanged: (value)
      {
        ref.read(provider.notifier).setValue(index, value!);
        if (onChanged != null) onChanged!(value);
      },
      side: BorderSide(color: AppColors.color.kGrey003, width: 2.w,),
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXSmall),
    );
  }
}
