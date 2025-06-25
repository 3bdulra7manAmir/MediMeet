import 'package:flutter/material.dart';

import '../../../../../../../config/theme/font_manager/font_weights.dart';
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
    return Switch(
      value: isSwitched,
      onChanged: (value)
      {
        setState(()
        {
          isSwitched = value;
        });
      },
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: Colors.grey.shade300,
      activeColor: Colors.white,
      activeTrackColor: Colors.blue,
    );
  }
}