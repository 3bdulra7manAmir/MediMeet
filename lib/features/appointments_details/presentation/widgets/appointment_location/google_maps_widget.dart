import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_appointments/core/widgets/circular_indicator.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/utils/url_launcher.dart';
import 'google_maps_get_direction_widget.dart';
import 'google_maps_pin_widget.dart';

class GoogleMapsWidget extends StatelessWidget
{
  const GoogleMapsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    const LatLng clinicLocation = LatLng(24.7136, 46.6753);
    const CameraPosition initialCameraPosition = CameraPosition(target: clinicLocation, zoom: 15.0,);
    return FutureBuilder(
      future: customPinWidget(),
      builder: (context, snapshot)
      {
        if (!snapshot.hasData)
        {
          return const AppCircularIndicator();
        }

        final markerData = snapshot.data!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Container(height: 160.h,
              decoration: BoxDecoration(borderRadius: AppRadiuses.circular.small, border: Border.all(color: AppColors.color.kGrey002),),
              child: ClipRRect(
                borderRadius: AppRadiuses.circular.small,
                child: Stack(
                  children:
                  [
                    GoogleMap(
                      initialCameraPosition: initialCameraPosition,
                      markers:
                      {
                        Marker(
                          markerId: const MarkerId('clinic_location'),
                          position: clinicLocation,
                          icon: markerData.bitmapDescriptor,
                          anchor: const Offset(0.5, 0.5),
                        ),
                      },
                      zoomControlsEnabled: false,
                      myLocationEnabled: true,
                    ),
                    Positioned(bottom: 8.h, right: 12.w,
                      child: GestureDetector(
                        onTap: () => launchMapsUrl(clinicLocation),
                        child: const GetDirectionsWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
