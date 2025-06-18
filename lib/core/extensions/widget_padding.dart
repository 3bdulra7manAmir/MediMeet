import 'package:flutter/material.dart';

extension WidgetPaddingX on Widget
{

  Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: horizontal,
          vertical: vertical,
        ),
        child: this,
      );

  Widget paddingDirectionalOnly({
    double top = 0.0,
    double end = 0.0,
    double start = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsetsDirectional.only(
            top: top, start: start, end: end, bottom: bottom),
        child: this,
      );  
}