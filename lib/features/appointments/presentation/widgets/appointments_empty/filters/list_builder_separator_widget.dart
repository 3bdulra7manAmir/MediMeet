import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/widgets/custom_divider.dart';

class ListBuilderSeparatorWidget extends StatelessWidget
{
  const ListBuilderSeparatorWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Sizes.size5.verticalSpace,
        CustomDivider(endIndent: 20.w, indent: 30.w),
        Sizes.size5.verticalSpace,
      ],
    );
  }
}