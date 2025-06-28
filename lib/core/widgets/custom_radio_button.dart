import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager/colors.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;

  const CustomRadioButton({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w, height: 20.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle, border: Border.all(color: AppColors.color.kGrey003,),
      ),
      child: isSelected
      ? Center(
          child: Container(
            width: 10.w, height: 10.h,
            decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.color.kGrey004,),
          ),
        )
      : null,
    );
  }
}