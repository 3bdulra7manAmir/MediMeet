// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../../../config/router/app_router/app_router.dart';
import '../../../../../config/router/app_router/app_routes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import 'filters/main_modal_bottom_sheet.dart';

class ExploreClinicsButton extends StatelessWidget
{
  const ExploreClinicsButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(text: AppStrings.exploreClinics, onPressed: () => filterBottomModalSheet(context));
    //return CustomButton(text: AppStrings.exploreClinics, onPressed: () => AppRouter.router.pushNamed(AppRoutes.appointmentsDetails));
  }
}

