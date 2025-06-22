// ignore_for_file: unused_import

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../../../config/router/app_router.dart';
import '../../../../../../../config/router/app_routes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/popers/filters_modal_bottom_sheet.dart';
import 'rate_widget.dart';

void showRateFilterBottomModalSheet(BuildContext context)
{
  showFilterBottomModalSheet(
    context: context,
    appBarTitle: AppStrings.minimumRating,
    children: const [FiltersRateWidget(),],
    buttonText: AppStrings.addFilter,
    onButtonPressed: ()
    {
      log("${AppStrings.minimumRating}...Out");
      //AppRouter.router.pushNamed(AppRoutes.);
    },
  );
}
