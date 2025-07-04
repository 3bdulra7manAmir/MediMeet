import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../domain/usecase/rating_usecase.dart';
import 'rate_widget.dart';

class RatingFilterChosseListWidget extends ConsumerWidget
{
  const RatingFilterChosseListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncRatings = ref.watch(ratingUseCaseProvider);
    return asyncRatings.when(
      data: (ratings) => CustomListviewBuilder(
        itemCount: ratings.length,
        itemBuilder: (context, index) => RatingFilterChooseWidget(
          index: index,
          ratingLabel: ratings[index].rateText ?? '',
          starsCount: double.tryParse(ratings[index].rateValue ?? '') ?? 0,
          ratingId: ratings[index].id?.toString()
        ),
        separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
      ),
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }
}
