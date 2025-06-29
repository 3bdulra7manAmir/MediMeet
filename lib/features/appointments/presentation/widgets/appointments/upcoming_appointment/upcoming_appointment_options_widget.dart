import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../../config/router/app_router/app_router.dart';
import '../../../../../../config/router/app_router/app_routes.dart';
import '../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../core/constants/app_borders.dart';
import '../../../../../../core/constants/app_images.dart';
import '../../../../../../core/constants/app_sizes.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/constants/app_styles.dart';
import '../../../../../../core/utils/url_launcher.dart';
import '../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../appointments_details/domain/usecase/location_usecase.dart';

class AppointmentOptionsWidget extends StatelessWidget
{
  const AppointmentOptionsWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Expanded(
          child: CustomButton(
            text: AppStrings.viewDetails, 
            textStyle: AppStyles.small(fontWeight: AppFontWeights.mediumWeight, fontColor: AppColors.color.kWhite002),
            backgroundColor: AppColors.color.kGreen003,
            borderRadius: AppRadiuses.circular.large,
            onPressed: () => AppRouter.router.pushNamed(AppRoutes.appointmentsDetails),
            height: 40.h,
          ),
        ),
        Sizes.size12.horizontalSpace,
        Consumer(
          builder: (context, ref, child)
          {
            final locationAsync = ref.watch(locationUseCaseProvider);
            return locationAsync.when(
              data: (locations)
              {
                final location = locations.isNotEmpty ? locations.first : null;
                if (location == null) return const CustomCircularIndicator();

                return GestureDetector(
                  onTap: ()
                  {
                    final lat = location.locationLat ?? 0.0;
                    final lng = location.locationLng ?? 0.0;
                    launchMapsUrl(LatLng(lat, lng));
                  },
                  child: SvgPicture.asset(AppAssets.icons.locationGreen),
                );
              },
              loading: () => SvgPicture.asset(AppAssets.icons.locationGreen),
              error: (e, _) => CustomErrorWidget(e: e),
            );
          },
        ),
        Sizes.size12.horizontalSpace,
        GestureDetector(
          onTap: () => log("Edit"),
          child: SvgPicture.asset(AppAssets.icons.editPensileGreen)),
        Sizes.size12.horizontalSpace,
        GestureDetector(
          onTap: () => log("Delete"),
          child: SvgPicture.asset(AppAssets.icons.cancelGreen))
      ],
    );
  }
}