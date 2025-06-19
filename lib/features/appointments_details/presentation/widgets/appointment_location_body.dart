import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_sizes.dart';
import 'appointment_location/google_maps_widget.dart';
import 'appointment_location/location_title_widget.dart';

class AppointmentLocationWidget extends StatelessWidget
{
  const AppointmentLocationWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        const LocationTitleWidget(),
        Sizes.size16.verticalSpace,
        const GoogleMapsWidget(),
      ],
    );
  }
}


