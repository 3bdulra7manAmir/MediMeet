import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/widgets/custom_divider.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import 'clinic_type_filter_widget.dart';

class ClinicTypeFilterChooseListWidget extends StatelessWidget
{
  const ClinicTypeFilterChooseListWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return CustomListviewBuilder(
      itemBuilder: (context, index) => const ClinicTypeChooseWidget(),
      separatorBuilder: (context, index) => Column(children:[Sizes.size5.verticalSpace, CustomDivider(endIndent: 20.w, indent: 30.w,), Sizes.size5.verticalSpace,],),
      itemCount: 5,
    );
  }
}