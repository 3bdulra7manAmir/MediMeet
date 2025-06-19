import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';

class GoogleMapsWidget extends StatelessWidget
{
  const GoogleMapsWidget({super.key});

  Future<BitmapDescriptor> _createCustomMarker() async
  {
    // Create a canvas to draw the custom marker
    final PictureRecorder recorder = PictureRecorder();
    final Canvas canvas = Canvas(recorder);
    final Paint paint = Paint()..color = AppColors.color.kRed001;
    final TextPainter textPainter = TextPainter(
      textDirection: TextDirection.ltr,
      text: const TextSpan(
        text: 'AL-AMARUH',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    
    textPainter.layout();
    
    // Draw marker shape (pin with circle)
    canvas.drawCircle(const Offset(24, 24), 24, paint);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        const Rect.fromLTWH(0, 24, 48, 48),
        const Radius.circular(8),
      ),
      paint,
    );
    
    // Draw text
    textPainter.paint(
      canvas,
      Offset(24 - textPainter.width / 2, 48 - textPainter.height / 2),
    );
    // Convert to image and then to BitmapDescriptor
    final picture = recorder.endRecording();
    final image = await picture.toImage(72, 72);
    final bytes = await image.toByteData(format: ImageByteFormat.png);
    return BitmapDescriptor.bytes(bytes!.buffer.asUint8List());
  }

  @override
  Widget build(BuildContext context)
  {
    const LatLng clinicLocation = LatLng(24.7136, 46.6753);
    const CameraPosition initialCameraPosition = CameraPosition(
      target: clinicLocation,
      zoom: 15.0,
    );

    return FutureBuilder(
      future: _createCustomMarker(),
      builder: (context, snapshot)
      {
        if (!snapshot.hasData)
        {
          return const CircularProgressIndicator();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Container(height: 200.h, width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: AppRadiuses.circular.small,
                border: Border.all(color: AppColors.color.kGrey002),
              ),
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
                          icon: snapshot.data!,
                          anchor: const Offset(0.5, 0.5),
                        ),
                      },
                      //mapType: MapType.normal,
                      zoomControlsEnabled: false,
                      myLocationEnabled: true,
                    ),
                    Positioned(bottom: 10.h, right: 10.w,
                      child: FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.white,
                        onPressed: ()
                        {
                          // Open directions in Google Maps
                          // _launchMapsUrl(clinicLocation);
                        },
                        child: Icon(Icons.navigation, color: AppColors.color.kBlack001,),
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

  // Uncomment and implement this function to open directions
  /*
  Future<void> _launchMapsUrl(LatLng location) async {
    final url = 'https://www.google.com/maps/dir/?api=1&destination=${location.latitude},${location.longitude}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  */
}