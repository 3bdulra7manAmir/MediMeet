import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_strings.dart';
import '../choice_widget.dart';
import '../filters_title_widget.dart';

class LocationWidget extends StatelessWidget
{
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.location, onTap: () => ModalSheetRouter.router.pushNamed(ModalSheetRoutes.locationFilter),),
        Sizes.size8.verticalSpace,
        const ChoiceWidget(choice: "Riyadh",),
      ],
    );
  }
}

