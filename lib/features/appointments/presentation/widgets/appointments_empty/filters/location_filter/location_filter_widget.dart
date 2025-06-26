import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../../../../core/widgets/custom_radio_button.dart';

class LocationFilterChooseWidget extends StatefulWidget
{
  final List<String> locations;
  const LocationFilterChooseWidget({super.key, required this.locations});

  @override
  State<LocationFilterChooseWidget> createState() => LocationFilterChooseWidgetState();
}

class LocationFilterChooseWidgetState extends State<LocationFilterChooseWidget>
{
  String? selectedLocation;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.locations.map((location)
      {
        return Row(
          children:
          [
            Sizes.size16.horizontalSpace,
            CustomRadioButton(
              value: location,
              groupValue: selectedLocation,
              onChanged: (value) => setState(() => selectedLocation = value),
            ),
            Sizes.size8.horizontalSpace,
            Text(location, style: AppStyles.large()),
          ],
        );
      }).toList(),
    );
  }
}
