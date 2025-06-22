
// ignore_for_file: unused_import

import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/router/app_routes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import 'filters/clinic_filter/clinic_type_filter_body.dart';
import 'filters/rate_filter/rate_filter_body.dart';

class ExploreClinicsButton extends StatelessWidget
{
  const ExploreClinicsButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      buttonText: AppStrings.exploreClinics, buttonOnPressed: ()
      {
        //---------------------------------------------------//
          log("AppRouter...");
          //AppRouter.router.pushNamed(AppRoutes.appointments);
          //showRateFilterBottomModalSheet(context);
          showClinicFilterBottomModalSheet(context);
        //---------------------------------------------------//
      },
    );
  }
}

