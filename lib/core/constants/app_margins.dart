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

  /// [_horizontal_8.w] Extra Extra Small Margin (8px)
  EdgeInsets get xxSmall => EdgeInsets.symmetric(horizontal: 8.w);

  /// [_horizontal_10.w] Extra Small Margin (10px)
  EdgeInsets get xSmall => EdgeInsets.symmetric(horizontal: 10.w);

  /// [_horizontal_16.w] Small-Medium Margin (16px)
  EdgeInsets get medium => EdgeInsets.symmetric(horizontal: 16.w);

  /// [_horizontal_18.w] Medium Margin (18px)
  EdgeInsets get large => EdgeInsets.symmetric(horizontal: 18.w);
}

class Directional
{
  Directional._();

  /// [_directional_12.w] Start Directional Margin (12px)
  EdgeInsetsDirectional get small => EdgeInsetsDirectional.only(start: 12.w);
}
