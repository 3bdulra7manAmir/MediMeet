import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/custom_listview_builder.dart';
import 'rate_widget.dart';

class RatingFilterChosseListWidget extends StatelessWidget
{
  const RatingFilterChosseListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 4,
      itemBuilder: (context, index) => const RatingFilterChooseWidget(),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}