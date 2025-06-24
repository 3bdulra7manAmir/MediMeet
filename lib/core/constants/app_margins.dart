import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppMargins
{
  AppMargins._();

  static final symmetric = Symmetric._();
  static final directional = Directional._();
}

class Symmetric
{
  Symmetric._();

  /// [_horizontal_16.w]
  EdgeInsets get medium => EdgeInsets.symmetric(horizontal: 16.w);

  /// [_horizontal_24.w]
  EdgeInsets get xMedium => EdgeInsets.symmetric(horizontal: 24.w);
}

class Directional
{
  Directional._();

  /// [_directional_6.w] End Directional Margin (6px)
  EdgeInsetsDirectional get smallEnd => EdgeInsetsDirectional.only(end: 6.w);
}
