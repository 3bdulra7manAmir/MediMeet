import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import 'choice_widget.dart';
import 'filters_title_widget.dart';

class InsuranceProviderWidget extends StatelessWidget
{
  const InsuranceProviderWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.insuranceProvider, onTap: () {},),
        Sizes.size8.verticalSpace,
        const ChoiceWidget(),
      ],
    );
  }
}

