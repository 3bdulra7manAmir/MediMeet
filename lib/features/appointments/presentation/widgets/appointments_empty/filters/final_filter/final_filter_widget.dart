import 'package:flutter/material.dart';

import '../../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/constants/app_styles.dart';

class FinalFilterWidget extends StatelessWidget
{
  const FinalFilterWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(AppStrings.insurance, style: AppStyles.large(fontWeight: AppFontWeights.mediumWeight),),
        const Spacer(),
        
      ],
    );
  }
}