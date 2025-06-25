import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../appointments/past_appointment/rate_stars_bar.dart';
import '../check_box_widget.dart';

class RatingFilterChooseWidget extends StatelessWidget
{
  const RatingFilterChooseWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Sizes.size16.horizontalSpace,
        const CheckBoxWidget(),
        Sizes.size6.horizontalSpace,
        RateStars(initialValue: 5, itemPadding: AppPadding.symmetric.xXXSmall),
        Sizes.size8.horizontalSpace,
        Text("(5.0+ only)", style: AppStyles.large(),)
      ],
    );
  }
}