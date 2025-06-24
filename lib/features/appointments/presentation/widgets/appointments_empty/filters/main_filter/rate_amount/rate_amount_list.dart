import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/listview_builder.dart';
import '../choice_widget.dart';

class RatingFilterListWidget extends StatelessWidget
{
  const RatingFilterListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const ChoiceWidget(choice: "Rating",),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}