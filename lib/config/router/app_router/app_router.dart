import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/widgets/circular_indicator.dart';
import '../../../features/appointments/presentation/screens/appointments_view.dart';
import '../../../features/appointments_details/presentation/screens/appointments_details_view.dart';
import '../../../features/appointments/presentation/screens/appointments_empty_view.dart';
import 'app_routes.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.appointmentsEmpty,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: AppCircularIndicator()),),
    routes:
    [
      /// [Appointments Empty]
      GoRoute(
        path: AppRoutes.appointmentsEmpty,
        name: AppRoutes.appointmentsEmpty,
        builder: (context, state) => const AppointmentsEmpty(),
      ),

      /// [Appointments]
      GoRoute(
        path: AppRoutes.appointments,
        name: AppRoutes.appointments,
        builder: (context, state) => const Appointments(),
      ),

      /// [Appointments Details]
      GoRoute(
        path: AppRoutes.appointmentsDetails,
        name: AppRoutes.appointmentsDetails,
        builder: (context, state) => const AppointmentsDetails(),
      ),
    ]
  );
}
