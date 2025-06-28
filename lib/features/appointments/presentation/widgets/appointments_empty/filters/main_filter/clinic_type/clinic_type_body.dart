import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_routes.dart';
import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/constants/app_strings.dart';
import '../filters_title_widget.dart';
import 'clinic_type_list.dart';

class ClinicTypeApplyWidget extends StatelessWidget
{
  const ClinicTypeApplyWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.clinicType, onTap: () => ModalSheetRouter.router.pushNamed(ModalSheetRoutes.clinicType),),
        Sizes.size8.verticalSpace,
        SizedBox(height: 29.h, child: const ClinicTypeApplyListWidget()),
      ],
    );
  }
}

