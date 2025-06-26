import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../../../appointments/past_appointment/rate_stars_bar.dart';
import '../check_box_widget.dart';

class RatingFilterChooseWidget extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ratingId ?? index.toString();
    return Row(
      children: [
        Sizes.size16.horizontalSpace,
        CheckBoxWidget(
          id: id,
          provider: ratingCheckboxProvider,
          onChanged: (val) {
            final notifier = ref.read(selectedFilterChoicesProvider.notifier);
            final choice = SelectedFilterChoice(
              type: FilterType.rating,
              id: id,
              label: ratingLabel,
              extra: starsCount,
            );
            if (val) {
              notifier.addChoice(choice);
            } else {
              notifier.removeChoice(choice);
            }
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
