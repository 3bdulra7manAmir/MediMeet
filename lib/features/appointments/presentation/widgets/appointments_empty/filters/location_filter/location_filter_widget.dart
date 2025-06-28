import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/custom_radio_button.dart';

class LocationFilterItem extends StatelessWidget
{
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const LocationFilterItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Sizes.size12.verticalSpace,
          Row(
            children:
            [
              Sizes.size16.horizontalSpace,
              CustomRadioButton(isSelected: isSelected),
              Sizes.size8.horizontalSpace,
              Text(title, style: AppStyles.large()),
            ],
          ),
          Sizes.size16.verticalSpace,
        ],
      ),
    );
  }
}