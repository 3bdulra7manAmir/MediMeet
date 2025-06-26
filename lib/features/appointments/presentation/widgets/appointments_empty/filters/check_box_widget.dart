import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../controller/filters_controllers/checkbox_controller.dart';

class CheckBoxWidget extends ConsumerWidget
{
  const CheckBoxWidget({super.key, this.onChanged});

  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isRememberMe = ref.watch(checkboxValueProvider);
    return Checkbox(value: isRememberMe, onChanged: (value) => ref.read(checkboxValueProvider.notifier).state = value!, 
      side: BorderSide(color: AppColors.color.kGrey003, width: (2).w,),
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXSmall),
    );
  }
}