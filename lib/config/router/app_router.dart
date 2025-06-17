import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/widgets/circular_indicator.dart';
import 'app_routes.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.kSplash,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: AppCircularIndicator()),),
    routes:
    [
      ///[App_Bottom_Nav_Bar_Temp]
      // GoRoute(
      //   path: AppRoutes.kTest,
      //   name: AppRoutes.kTest,
      //   builder: (context, state) => const MyHomePage(),
      // ),
      
    ]
  );
}
