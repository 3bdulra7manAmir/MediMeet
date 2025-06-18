import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppRadiuses
{
  AppRadiuses._();

  static final top = BorderTopOnly._();
  static final circular = BorderCircular._();
}

class BorderTopOnly
{
  BorderTopOnly._();

  /// [topLeft: 12.r ,, topRight: 12.r]
  BorderRadiusGeometry get xSmall => BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      );
}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 8.r]
  BorderRadius get xsmall => BorderRadius.circular(8.r);///

  /// [circular: 12.r]
  BorderRadius get small => BorderRadius.circular(12.r);///

  /// [circular: 80.r]
  BorderRadius get medium => BorderRadius.circular(80.r);///

}


abstract class AppBorderWidth
{
  AppBorderWidth._();

  /// [small] → 2px
  static double get small => 2.0.w;
}


// abstract class AppFullBorders
// {
//   AppFullBorders._();

//   /// [color: kGrey001, width: 1.0.w]
//   static BoxBorder get verificationCode => Border.all(
//     color: AppColors.color.kWhite001,
//     width: thin,
//   );
// }