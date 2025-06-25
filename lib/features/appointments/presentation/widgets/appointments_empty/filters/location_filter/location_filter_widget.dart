import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/custom_radio_button.dart';

class LocationFilterChooseWidget extends StatefulWidget
{
  const LocationFilterChooseWidget({super.key});

  @override
  State<LocationFilterChooseWidget> createState() => LocationFilterChooseWidgetState();
}

class LocationFilterChooseWidgetState extends State<LocationFilterChooseWidget>
{
  String? selectedLocation;

  final List<String> locations = ["Riyadh", "Jeddah", "Dammam", "Khobar", "Medina",];

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: locations.map((location)
      {
        return Row(
          children:
          [
            Sizes.size16.horizontalSpace,
            CustomRadioButton(
              value: location, 
              groupValue: selectedLocation, 
              onChanged: (value) => setState(() => selectedLocation = value)
            ),
            Sizes.size8.horizontalSpace,
            Text(location, style: AppStyles.large()),
          ],
        );
      }).toList(),
    );
  }
}
