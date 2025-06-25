import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/custom_listview_builder.dart';
import '../choice_widget.dart';

class SpecialtiesApplyListWidget extends StatelessWidget
{
  const SpecialtiesApplyListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemCount: 9,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const ChoiceWidget(choice: "Dermatology",),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}