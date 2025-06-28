import 'package:flutter/material.dart';

import '../../../../../config/router/app_router/app_router.dart';
import '../../../../../config/router/app_router/app_routes.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../filters/presentation/screens/main_filter_view/main_modal_bottom_sheet.dart';

class ExploreClinicsButtonWidget extends StatelessWidget
{
  const ExploreClinicsButtonWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(
      text: AppStrings.exploreClinics, 
      onLongPress: () =>  AppRouter.router.pushNamed(AppRoutes.appointments),
      onPressed: () => filterBottomModalSheet(context),
    );
  }
}

