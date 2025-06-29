import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager/colors.dart';
import '../../../../config/theme/font_manager/font_weights.dart';
import '../../../../core/constants/app_borders.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../controller/has_insurance_controller.dart';

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


class CustomToggleSwitch extends ConsumerWidget
{
  const CustomToggleSwitch({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final isSwitched = ref.watch(toggleSwitchProvider);
    final bool isIOS = Platform.isIOS;

    // iOS: full pill shape, Android: less rounded
    final BorderRadius borderRadius = isIOS
        ? AppRadiuses.circular.xMedium
        : AppRadiuses.circular.medium;

    final double width = isIOS ? 50.w : 44.w;
    final double height = isIOS ? 30.h : 24.h;
    final double circleSize = isIOS ? 26.w : 20.w;
    final EdgeInsetsGeometry padding = isIOS ? EdgeInsets.all(2.w) : EdgeInsets.all(2.w);

    return GestureDetector(
      onTap: ()
      {
        log(!isSwitched ? "True" : "False");
        ref.read(toggleSwitchProvider.notifier).toggle();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: isSwitched ? AppColors.color.kBlue002 : Colors.grey.shade300,
          borderRadius: borderRadius,
        ),
        alignment: isSwitched ? Alignment.centerRight : Alignment.centerLeft,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: circleSize,
          height: circleSize,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow:
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

