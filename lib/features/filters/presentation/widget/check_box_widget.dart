import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../core/constants/app_borders.dart';
import '../controller/shared_checkbox_controller.dart';

class CheckBoxWidget extends ConsumerWidget {
  const CheckBoxWidget({
    super.key,
    required this.id,
    required this.group,
    this.onChanged,
  });

  final String id;
  final CheckboxGroup group;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref.watch(checkboxValuesNotifierProvider.select((state) => state[group]?[id] ?? false,),);
    return Checkbox(
      fillColor: WidgetStateProperty.resolveWith((states)
      {
        if (states.contains(WidgetState.selected))
        {
          return AppColors.color.kBlue005;
        }
        return null;
      }),
      value: isChecked,
      onChanged: (value)
      {
        if (value == null) return;
        ref.read(checkboxValuesNotifierProvider.notifier).setValue(group, id, value);
        if (onChanged != null) onChanged!(value);
      },
      side: BorderSide(color: AppColors.color.kGrey003, width: 2.w,),
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXSmall,),
    );
  }
}
