import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/popers/filters_modal_bottom_sheet.dart';
import 'insurance_filter_widget.dart';

void showInsuranceFilterBottomModalSheet(BuildContext context)
{
  showFilterBottomModalSheet(
    context: context,
    appBarTitle: AppStrings.insuranceProvider,
    children: const [InsuranceFilterWidget(),],
    buttonText: AppStrings.addFilter,
    onButtonPressed: ()
    {
      log("${AppStrings.insuranceProvider}...Out");
      // You can navigate or apply filter logic here
    },
  );
}
