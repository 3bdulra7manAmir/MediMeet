import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_margins.dart';
import '../../../../../../core/widgets/popers/modal_bottom_sheet.dart';

void filterBottomModalSheet(BuildContext context)
{
  showAppBottomSheet(
    context: context,
    builder: (context) => Container(
      height: 860.h,
      margin: AppMargins.symmetric.xMedium,
      decoration: BoxDecoration(borderRadius: AppRadiuses.only.meduim,),
      child: Scaffold(
        backgroundColor: AppColors.color.kWhite002,
        body: const ModalSheetRouter(),
      ),
    ),
  );
}
