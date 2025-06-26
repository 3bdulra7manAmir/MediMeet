import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../../../appointments/past_appointment/rate_stars_bar.dart';
import '../check_box_widget.dart';

class RatingFilterChooseWidget extends StatelessWidget
{
  const RatingFilterChooseWidget({
    super.key,
    required this.index,
    required this.ratingLabel,
    required this.starsCount,
  });

  final int index;
  final String ratingLabel;
  final double starsCount;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          index: index,
          provider: ratingCheckboxProvider,
          onChanged: (val) => log("Selected rating: $ratingLabel -> $val"),
        ),
        Sizes.size6.horizontalSpace,
        RateStars(initialValue: starsCount, itemPadding: AppPadding.symmetric.xXXSmall),
        Sizes.size8.horizontalSpace,
        Text("($ratingLabel only)", style: AppStyles.large()),
      ],
    );
  }
}
