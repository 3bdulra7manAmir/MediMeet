import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppRadiuses
{
  AppRadiuses._();

  static final only = BorderOnly._();
  static final circular = BorderCircular._();
}

class BorderOnly
{
  BorderOnly._();

  ///[topLeft: 12.r ,, bottomLeft: 12.r]
  BorderRadiusGeometry get xSmall1 => BorderRadius.only(
    topLeft: Radius.circular(12.r),
    bottomLeft: Radius.circular(12.r),
  );

  ///[topLeft: 12.r ,, topRight: 12.r]
  BorderRadiusGeometry get xSmall2 => BorderRadius.only(
    topLeft: Radius.circular(12.r),
    topRight: Radius.circular(12.r),
  );

  ///[topLeft: 16.r ,, topRight: 16.r]
  BorderRadiusGeometry get meduim => BorderRadius.only(
    topLeft: Radius.circular(16.r),
    topRight: Radius.circular(16.r),
  );
}


class BorderCircular
{
  BorderCircular._();

  /// [circular: 6.r]
  BorderRadius get xXXSmall => BorderRadius.circular(6.r);

  /// [circular: 8.r]
  BorderRadius get xXSmall => BorderRadius.circular(8.r);

  /// [circular: 10.r]
  BorderRadius get xSmall => BorderRadius.circular(10.r);

  /// [circular: 12.r]
  BorderRadius get small => BorderRadius.circular(12.r);

  /// [circular: 16.r]
  BorderRadius get medium => BorderRadius.circular(16.r);

  /// [circular: 30.r]
  BorderRadius get xMedium => BorderRadius.circular(30.r);

  /// [circular: 32.r]
  BorderRadius get xXMedium => BorderRadius.circular(32.r);

  /// [circular: 80.r]
  BorderRadius get large => BorderRadius.circular(80.r);

  /// [circular: 100.r]
  BorderRadius get xlarge => BorderRadius.circular(100.r);

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