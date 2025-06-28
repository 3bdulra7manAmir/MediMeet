import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../controller/selected_filter_choices_controller.dart';
import '../../../widget/filters_title_widget.dart';
import 'rate_amount_list.dart';

class RateAmountApplyBody extends StatelessWidget
{
  const RateAmountApplyBody({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.rating, onTap: () => ModalSheetRouter.router.pushNamed(ModalSheetRoutes.minimumRating),),
        Sizes.size8.verticalSpace,
        Consumer(
          builder: (context, ref, _)
          {
            final selected = ref.watch(selectedFilterChoicesProvider).where((c) => c.type == FilterType.rating)
            .toList();
            if (selected.isEmpty)
            {
              return const SizedBox.shrink();
            }
            return SizedBox(height: 29.h, child: const RateAmountApplyListWidget());
          },
        ),
      ],
    );
  }
}

