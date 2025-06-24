import 'package:flutter/material.dart';
import '../../../../../core/constants/app_images.dart';

class CalendarImageWidget extends StatelessWidget
{
  const CalendarImageWidget({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(AppAssets.icons.medicalCalendarPNG,);
  }
}