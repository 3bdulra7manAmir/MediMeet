import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';

class CalendarImage extends StatelessWidget
{
  const CalendarImage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return //SvgPicture.asset(AppAssets.icons.medicalCalendar),
    Image.asset(AppAssets.icons.medicalCalendarPNG,);
  }
}