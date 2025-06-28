import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/widgets/custom_circular_indicator.dart';
import '../../../features/filters/presentation/screens/other_filters_view/clinic_filter/clinic_type_filter_body.dart';
import '../../../features/filters/presentation/screens/other_filters_view/insurance_filter/insurance_filter_body.dart';
import '../../../features/filters/presentation/screens/other_filters_view/location_filter/location_filter_body.dart';
import '../../../features/filters/presentation/screens/main_filter_view/main_filter_body.dart';
import '../../../features/filters/presentation/screens/other_filters_view/rate_filter/rate_filter_body.dart';
import '../../../features/filters/presentation/screens/other_filters_view/specialty_filter/specialty_filter_body.dart';
import 'modal_sheet_routes.dart';

class ModalSheetRouter extends StatelessWidget
{

  const ModalSheetRouter({super.key,});

  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: ModalSheetRoutes.mainFilter,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CustomCircularIndicator()),),
    routes:
    [
      /// [ Main Filter ]
      GoRoute(
        path: ModalSheetRoutes.mainFilter,
        name: ModalSheetRoutes.mainFilter,
        builder: (context, state) => const MainFilterApply(appBarTitle: AppStrings.filters),
      ),

      /// [ Insurance Provider ]
      GoRoute(
        path: ModalSheetRoutes.insuranceProvider,
        name: ModalSheetRoutes.insuranceProvider,
        builder: (context, state) => const InsuranceFilterBody(),
      ),
      
      /// [ Location Filter ]
      GoRoute(
        path: ModalSheetRoutes.locationFilter,
        name: ModalSheetRoutes.locationFilter,
        builder: (context, state) => const LocationFilterBody(),
      ),

      /// [ Specialty Filter ]
      GoRoute(
        path: ModalSheetRoutes.specialtyFilter,
        name: ModalSheetRoutes.specialtyFilter,
        builder: (context, state) => const SpecialtyFilterBody(),
      ),

      /// [ Clinic Type Filter ]
      GoRoute(
        path: ModalSheetRoutes.clinicType,
        name: ModalSheetRoutes.clinicType,
        builder: (context, state) => const ClinicTypeFilterBody(),
      ),

      /// [ Minimum Rating Filter ]
      GoRoute(
        path: ModalSheetRoutes.minimumRating,
        name: ModalSheetRoutes.minimumRating,
        builder: (context, state) => const RatingFilterBody(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
      routerConfig: ModalSheetRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
