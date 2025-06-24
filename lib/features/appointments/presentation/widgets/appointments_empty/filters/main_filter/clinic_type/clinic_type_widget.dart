import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_strings.dart';
import '../choice_widget.dart';
import '../filters_title_widget.dart';

class ClinicTypeWidget extends StatelessWidget
{
  const ClinicTypeWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.clinicType, onTap: () => ModalSheetRouter.router.pushNamed(ModalSheetRoutes.clinicType),),
        Sizes.size8.verticalSpace,
        const ChoiceWidget(choice: "Hospitals",),
      ],
    );
  }
}

