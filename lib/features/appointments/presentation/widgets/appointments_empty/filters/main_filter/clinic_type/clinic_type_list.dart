import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../../core/widgets/listview_builder.dart';
import '../choice_widget.dart';

class ClinicTypeFilterListWidget extends StatelessWidget
{
  const ClinicTypeFilterListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return AppListviewBuilder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const ChoiceWidget(choice: "Hospitals",),
      separatorBuilder: (context, index) => Sizes.size8.horizontalSpace,
    );
  }
}