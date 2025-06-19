import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../config/theme/color_manager/colors.dart';
import '../../../../../core/constants/app_borders.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/constants/app_sizes.dart';

class GoogleMapsPinWidget extends StatelessWidget
{
  const GoogleMapsPinWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      padding: AppPadding.symmetric.large,
      width: 72.w,
      height: 72.h,
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.circular.xlarge,
        color: AppColors.color.kBlue004,
      ),
      child: Container(
        width: 32.w,
        height: 32.h,
        decoration: BoxDecoration(
          borderRadius: AppRadiuses.circular.xsmall,
          border: Border.all(color: AppColors.color.kBlue001, width: Sizes.size10.w),
        ),
      ),
    );
  }
}


class GoogleMapsPinWidget2
{
  final BitmapDescriptor bitmapDescriptor;
  final Image pinImage;

  GoogleMapsPinWidget2({
    required this.bitmapDescriptor,
    required this.pinImage,
  });
}


Future<GoogleMapsPinWidget2> customPinWidget() async
{
  // 1. Create Google Maps marker from asset image
  final BitmapDescriptor markerBitmap = await BitmapDescriptor.asset(const ImageConfiguration(size: Size(72, 72)), AppAssets.icons.googleMapsPin,);

  // 2. Load Image widget (for UI display)
  final Image pinImage = Image.asset(AppAssets.icons.googleMapsPin, width: 72, height: 72);
  return GoogleMapsPinWidget2(
    bitmapDescriptor: markerBitmap,
    pinImage: pinImage,
  );
}
