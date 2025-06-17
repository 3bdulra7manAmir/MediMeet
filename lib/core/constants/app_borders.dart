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

  /// [topLeft: 10.r ,, topRight: 10.r]
  BorderRadiusGeometry get xxSmall => BorderRadius.only(
        topLeft: Radius.circular(10.r),
        topRight: Radius.circular(10.r),
      );

  /// [topLeft: 12.r ,, topRight: 12.r]
  BorderRadiusGeometry get xSmall => BorderRadius.only(
        topLeft: Radius.circular(12.r),
        topRight: Radius.circular(12.r),
      );

  /// [topLeft: 16.r ,, topRight: 16.r]
  BorderRadiusGeometry get small => BorderRadius.only(
        topLeft: Radius.circular(16.r),
        topRight: Radius.circular(16.r),
      );

  /// [topLeft: 20.r ,, topRight: 20.r]
  BorderRadiusGeometry get medium => BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(20.r),
      );
}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 1.r]
  BorderRadius get xxSmall => BorderRadius.circular(1.r);

  /// [circular: 4.r]
  BorderRadius get xSmall => BorderRadius.circular(4.r);

  /// [circular: 5.r]
  BorderRadius get small => BorderRadius.circular(5.r);

  /// [circular: 6.r]
  BorderRadius get medium => BorderRadius.circular(6.r);

  /// [circular: 7.r]
  BorderRadius get mediumPlus => BorderRadius.circular(7.r);

  /// [circular: 8.r]
  BorderRadius get large => BorderRadius.circular(8.r);

  /// [circular: 10.r]
  BorderRadius get xLarge => BorderRadius.circular(10.r);

  /// [circular: 12.r]
  BorderRadius get xxLarge => BorderRadius.circular(12.r);

  /// [circular: 20.r]
  BorderRadius get xxxLarge => BorderRadius.circular(20.r);

  /// [circular: 50.r]
  BorderRadius get roundedLarge => BorderRadius.circular(50.r);

  /// [circular: 100.r]
  BorderRadius get full => BorderRadius.circular(100.r);
}


abstract class AppBorderWidth
{
  AppBorderWidth._();

  /// [thin] → 1px
  static double get thin => 1.0.w;

  /// [medium] → 2px
  static double get medium => 2.0.w;
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