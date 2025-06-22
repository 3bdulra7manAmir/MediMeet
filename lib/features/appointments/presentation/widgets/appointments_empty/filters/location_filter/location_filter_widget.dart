import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';

class LocationFilterWidget extends StatefulWidget
{
  const LocationFilterWidget({super.key});

  @override
  State<LocationFilterWidget> createState() => _LocationFilterWidgetState();
}

class _LocationFilterWidgetState extends State<LocationFilterWidget>
{
  String? _selectedLocation;

  final List<String> _locations = ["Riyadh", "Jeddah", "Dammam", "Khobar", "Medina",];

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _locations.map((location)
      {
        return Row(
          children:
          [
            Sizes.size16.horizontalSpace,
            Radio<String>(
              value: location,
              groupValue: _selectedLocation,
              onChanged: (val)
              {
                if (val != null)
                {
                  setState(() => _selectedLocation = val);
                }
              },
            ),
            Sizes.size8.horizontalSpace,
            Text(location, style: AppStyles.large()),
          ],
        );
      }).toList(),
    );
  }
}
