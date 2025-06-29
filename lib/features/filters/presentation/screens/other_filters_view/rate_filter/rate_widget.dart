import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants/app_paddings.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../controller/shared_checkbox_controller.dart';
import '../../../../../appointments/presentation/widgets/appointments/past_appointment/rate_stars_bar.dart';
import '../../../widget/check_box_widget.dart';

class RatingFilterChooseWidget extends ConsumerWidget
{
  const RatingFilterChooseWidget({
    super.key,
    required this.index,
    required this.ratingLabel,
    required this.starsCount,
    this.ratingId,
  });

  final int index;
  final String ratingLabel;
  final double starsCount;
  final String? ratingId;

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final id = ratingId ?? index.toString();
    return Row(
      children: [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          id: id,
          provider: ratingCheckboxProvider,
          onChanged: (val) {
            ref.read(ratingCheckboxProvider.notifier).setValue(id, val);
          },
        ),
        Sizes.size6.horizontalSpace,
        RateStars(initialValue: starsCount, itemPadding: AppPadding.symmetric.xXXSmall),
        Sizes.size8.horizontalSpace,
        Text(ratingLabel, style: AppStyles.large()),
      ],
    );
  }
}
