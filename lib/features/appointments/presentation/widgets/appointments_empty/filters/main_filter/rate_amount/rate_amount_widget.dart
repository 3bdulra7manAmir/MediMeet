import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_strings.dart';
import '../choice_widget.dart';
import '../filters_title_widget.dart';
import 'rate_amount_list.dart';

class RateAmountWidget extends StatelessWidget
{
  const RateAmountWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.rating, onTap: () => ModalSheetRouter.router.pushNamed(ModalSheetRoutes.minimumRating),),
        Sizes.size8.verticalSpace,
        //const ChoiceWidget(choice: "Riyadh",),
        SizedBox(height: 29.h, child: const RatingFilterListWidget()),
      ],
    );
  }
}

