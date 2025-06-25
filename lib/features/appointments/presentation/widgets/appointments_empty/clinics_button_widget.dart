// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../../../../../config/router/app_router/app_router.dart';
import '../../../../../config/router/app_router/app_routes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import 'filters/main_filter/main_modal_bottom_sheet.dart';

class ExploreClinicsButtonWidget extends StatelessWidget
{
  const ExploreClinicsButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    //return CustomButton(text: AppStrings.exploreClinics, onPressed: () => AppRouter.router.pushNamed(AppRoutes.appointments));
    return CustomButton(text: AppStrings.exploreClinics, onPressed: () => filterBottomModalSheet(context));
    //return CustomButton(text: AppStrings.exploreClinics, onPressed: () => AppRouter.router.pushNamed(AppRoutes.appointmentsDetails));
  }
}

