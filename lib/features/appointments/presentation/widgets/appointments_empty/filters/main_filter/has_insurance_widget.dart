import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../../core/constants/app_borders.dart';
import '../../../../../../../core/constants/app_paddings.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/constants/app_styles.dart';

class HasInsuranceWidget extends StatelessWidget
{
  const HasInsuranceWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(AppStrings.insurance, style: AppStyles.large(fontWeight: AppFontWeights.mediumWeight),),
        const Spacer(),
        const CustomToggleSwitch(),
      ],
    );
  }
}


class CustomToggleSwitch extends StatefulWidget
{
  const CustomToggleSwitch({super.key});

  @override
  State<CustomToggleSwitch> createState() => _CustomToggleSwitchState();
}

class _CustomToggleSwitchState extends State<CustomToggleSwitch>
{
  bool isSwitched = false;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () => setState(()
      {
        isSwitched ? log("False") : log("True");
        isSwitched = !isSwitched;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 40.w, height: 24.h,
        padding: AppPadding.all.smallAll,
        decoration: BoxDecoration(
          color: isSwitched ? AppColors.color.kBlue002 : Colors.grey.shade300,
          borderRadius: AppRadiuses.circular.small,
        ),
        alignment: isSwitched ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: 20.w, height: 20.h,
          decoration:  BoxDecoration(
            color: AppColors.color.kWhite002,
            shape: BoxShape.circle,
            boxShadow: const
            [
              BoxShadow(
                color: Color.fromARGB(15, 16, 24, 40),
                offset: Offset(0, 1),
                blurRadius: 2,
              ),
              BoxShadow(
                color: Color.fromARGB(26, 16, 24, 40),
                offset: Offset(0, 1),
                blurRadius: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
