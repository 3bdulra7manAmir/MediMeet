import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/popers/filters_modal_bottom_sheet.dart';
import 'final_filter_widget.dart';

void showFinalFilterBottomModalSheet(BuildContext context)
{
  showFilterBottomModalSheet(
    context: context,
    appBarTitle: AppStrings.filters,
    children: const [FinalFilterWidget(),],
    buttonText: AppStrings.addFilter,
    onButtonPressed: ()
    {
      log("${AppStrings.filters}...Out");
      // You can navigate or apply filter logic here
    },
  );
}
