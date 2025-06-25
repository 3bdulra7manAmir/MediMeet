import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager/colors.dart';

class CustomRadioButton extends StatelessWidget
{
  final String value;
  final String? groupValue;
  final ValueChanged<String> onChanged;

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context)
  {
    final isSelected = value == groupValue;
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        width: 20.w, height: 20.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle, 
          border: Border.all(color: isSelected ? AppColors.color.kWhite002 : AppColors.color.kGrey001, width: 2.w,),
        ),
        child: 
        isSelected
            ? Container(
              width: 20.w, height: 20.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.color.kGrey004, 
                border: Border.all(color: AppColors.color.kGrey001, width: 2.w,)),
            )
            : null,
      ),
    );
  }
}
