import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/custom_listview_builder.dart';
import 'rate_amount_widget.dart';


class RateAmountApplyListWidget extends StatelessWidget
{
  const RateAmountApplyListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 3,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const RateAmountApplyWidget(initialValue: 4, ratingText: "(4.0+)",),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}