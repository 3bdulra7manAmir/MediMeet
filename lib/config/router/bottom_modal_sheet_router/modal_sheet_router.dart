import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_strings.dart';
import '../../../core/widgets/circular_indicator.dart';
import '../../../features/appointments/presentation/widgets/appointments_empty/filters/clinic_filter/clinic_type_filter_body.dart';
import '../../../features/appointments/presentation/widgets/appointments_empty/filters/insurance_filter/insurance_filter_body.dart';
import '../../../features/appointments/presentation/widgets/appointments_empty/filters/location_filter/location_filter_body.dart';
import '../../../features/appointments/presentation/widgets/appointments_empty/filters/main_filter/main_filter_body.dart';
import '../../../features/appointments/presentation/widgets/appointments_empty/filters/rate_filter/rate_filter_body.dart';
import '../../../features/appointments/presentation/widgets/appointments_empty/filters/specialty_filter/specialty_filter_body.dart';
import 'modal_sheet_routes.dart';

class ModalSheetRouter extends StatelessWidget
{

  const ModalSheetRouter({super.key,});

  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: ModalSheetRoutes.mainFilter,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: AppCircularIndicator()),),
    routes:
    [
      /// [ Main Filter ]
      GoRoute(
        path: ModalSheetRoutes.mainFilter,
        name: ModalSheetRoutes.mainFilter,
        builder: (context, state) => const ModalSheetMainScreen(appBarTitle: AppStrings.filters),
      ),

      /// [ Insurance Provider ]
      GoRoute(
        path: ModalSheetRoutes.insuranceProvider,
        name: ModalSheetRoutes.insuranceProvider,
        builder: (context, state) => const InsuranceFilter(),
      ),
      
      /// [ Location Filter ]
      GoRoute(
        path: ModalSheetRoutes.locationFilter,
        name: ModalSheetRoutes.locationFilter,
        builder: (context, state) => const LocationFilter(),
      ),

      /// [ Specialty Filter ]
      GoRoute(
        path: ModalSheetRoutes.specialtyFilter,
        name: ModalSheetRoutes.specialtyFilter,
        builder: (context, state) => const SpecialtyFilter(),
      ),

      /// [ Clinic Type Filter ]
      GoRoute(
        path: ModalSheetRoutes.clinicType,
        name: ModalSheetRoutes.clinicType,
        builder: (context, state) => const ClinicTypeFilter(),
      ),

      /// [ Minimum Rating Filter ]
      GoRoute(
        path: ModalSheetRoutes.minimumRating,
        name: ModalSheetRoutes.minimumRating,
        builder: (context, state) => const RateFilter(),
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
