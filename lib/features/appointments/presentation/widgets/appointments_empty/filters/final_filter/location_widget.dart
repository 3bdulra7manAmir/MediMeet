import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import 'choice_widget.dart';
import 'filters_title_widget.dart';

class LocationWidget extends StatelessWidget
{
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        FiltersTitleWidget(title: AppStrings.location, onTap: () {},),
        Sizes.size8.verticalSpace,
        const ChoiceWidget(),
      ],
    );
  }
}

