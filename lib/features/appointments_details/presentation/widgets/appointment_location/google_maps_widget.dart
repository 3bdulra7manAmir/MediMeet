import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/utils/url_launcher.dart';
import '../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../domain/usecase/location_usecase.dart';
import 'google_maps_get_direction_widget.dart';
import 'google_maps_pin_widget.dart';

class GoogleMapsWidget extends ConsumerWidget
{
  const GoogleMapsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final locationAsync = ref.watch(locationUseCaseProvider);
    return locationAsync.when(
      data: (locations)
      {
        final location = locations.isNotEmpty ? locations.first : null;
        if (location == null) return const CustomCircularIndicator();
        final LatLng clinicLocation = LatLng(location.locationLat ?? 0.0, location.locationLng ?? 0.0);
        final CameraPosition initialCameraPosition = CameraPosition(target: clinicLocation, zoom: 15.0,);
        return FutureBuilder(
          future: customPinWidget(),
          builder: (context, snapshot)
          {
            if (!snapshot.hasData)
            {
              return const CustomCircularIndicator();
            }
            final markerData = snapshot.data!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Container(height: 160.h,
                  decoration: BoxDecoration(borderRadius: AppRadiuses.circular.small,),
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
      loading: () => const CustomCircularIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}
