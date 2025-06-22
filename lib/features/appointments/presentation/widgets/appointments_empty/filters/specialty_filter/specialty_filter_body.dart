import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/popers/filters_modal_bottom_sheet.dart';
import 'specialty_filter_widget.dart';

void showSpecialtyFilterBottomModalSheet(BuildContext context)
{
  showFilterBottomModalSheet(
    context: context,
    appBarTitle: AppStrings.specialty,
    children: const [SpecialtyFilterWidget(),],
    buttonText: AppStrings.addFilter,
    onButtonPressed: ()
    {
      log("${AppStrings.specialty}...Out");
      // You can navigate or apply filter logic here
    },
  );
}
