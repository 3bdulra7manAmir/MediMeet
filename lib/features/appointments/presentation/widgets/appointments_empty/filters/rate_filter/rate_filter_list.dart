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
    final ratings =
    [
      {'stars': 5, 'label': '5.0+'},
      {'stars': 4, 'label': '4.0+'},
      {'stars': 3, 'label': '3.0+'},
      {'stars': 2, 'label': '2.0+'},
    ];

    return CustomListviewBuilder(
      itemCount: ratings.length,
      itemBuilder: (context, index) => RatingFilterChooseWidget(
        index: index,
        ratingLabel: ratings[index]['label'] as String,
        starsCount: ratings[index]['stars'] as double,
      ),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}
