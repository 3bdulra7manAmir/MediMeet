import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';

class CheckBoxWidget extends StatelessWidget
{
  const CheckBoxWidget({super.key, this.onChanged});

  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context)
  {
    return Checkbox.adaptive(value: false, onChanged: (value) => onChanged ?? log("Check Box: Pressed"), 
      side: BorderSide(color: AppColors.color.kGrey003, width: (2).w,),
      shape: RoundedRectangleBorder(borderRadius: AppRadiuses.circular.xXXSmall),
    );
  }
}