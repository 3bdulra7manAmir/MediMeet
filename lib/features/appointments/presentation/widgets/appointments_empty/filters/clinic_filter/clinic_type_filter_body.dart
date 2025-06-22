import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/popers/filters_modal_bottom_sheet.dart';
import 'clinic_type_filter_widget.dart';

void showClinicFilterBottomModalSheet(BuildContext context)
{
  showFilterBottomModalSheet(
    context: context,
    appBarTitle: AppStrings.clinicType,
    children: const [FiltersClinicWidget(),],
    buttonText: AppStrings.addFilter,
    onButtonPressed: ()
    {
      log("${AppStrings.clinicType}...Out");
      // You can navigate or apply filter logic here
    },
  );
}
