import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import 'insurance_filter_widget.dart';

class InsuranceFilterChooseListWidget extends StatelessWidget
{
  const InsuranceFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 25,
      itemBuilder: (context, index) => InsuranceFilterChooseWidget(index: index, insuranceName: "Bupa $index",),
      separatorBuilder: (context, index) => Column(
        children:
        [
          Sizes.size5.verticalSpace,
          CustomDivider(endIndent: 20.w, indent: 30.w),
          Sizes.size5.verticalSpace,
        ],
      ),
    );
  }
}
