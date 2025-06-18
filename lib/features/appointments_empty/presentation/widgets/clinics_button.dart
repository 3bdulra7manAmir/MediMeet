import 'dart:developer';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/button.dart';

class ExploreClinicsButton extends StatelessWidget
{
  const ExploreClinicsButton({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomButton(buttonText: AppStrings.exploreClinics, buttonOnPressed: () => log("AppRouter..."),);
  }
}

