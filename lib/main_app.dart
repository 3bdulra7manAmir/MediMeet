import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/router/app_router/app_router.dart';
import 'config/theme/theme_manager/themes.dart';


class MedicalAppointment extends StatelessWidget
{
  const MedicalAppointment({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => 
      ScreenUtilInit(
        designSize: const Size(430, 932),
        builder: (context, child) => 
        MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: AppThemes.defaultTheme(),
        ),
      ),
    );
  }
}

