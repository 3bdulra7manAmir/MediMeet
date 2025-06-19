import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medical_appointments/core/widgets/circular_indicator.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/utils/url_launcher.dart';
import 'google_maps_get_direction_widget.dart';
import 'google_maps_pin_widget.dart';
import '../../controller/appointments_location_controller.dart';

class GoogleMapsWidget extends ConsumerWidget
{
  const GoogleMapsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final locationAsync = ref.watch(locationProvider);
    return locationAsync.when(
      data: (locations)
      {
        final location = locations.isNotEmpty ? locations.first : null;
        if (location == null) return const AppCircularIndicator();
        final LatLng clinicLocation = LatLng(location.billLat ?? 0.0, location.billLng ?? 0.0);
        final CameraPosition initialCameraPosition = CameraPosition(target: clinicLocation, zoom: 15.0,);
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
      },
      loading: () => const AppCircularIndicator(),
      error: (e, _) => Text('Error: $e'),
    );
  }
}
