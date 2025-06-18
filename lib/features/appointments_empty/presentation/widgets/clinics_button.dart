import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../config/router/app_router.dart';
import '../../../../config/router/app_routes.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';

class ExploreClinicsButton extends StatelessWidget
{
  const ExploreClinicsButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      buttonText: AppStrings.exploreClinics, buttonOnPressed: ()
      {
        log("AppRouter...");
        AppRouter.router.pushNamed(AppRoutes.appointments);
      },
    );
  }
}

