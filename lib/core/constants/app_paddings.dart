import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


abstract class AppPadding
{
  AppPadding._();
  static final all = All._();
  static final symmetric = Symmetric._();
  static final directional = Directional._();
  static final single = Single._();
  static final special = Special._();
}


class All
{
  All._();

  /// 5px all sides
  final EdgeInsets xxSmallAll = const EdgeInsets.all(5); // xxSmallAll

  /// 10px all sides
  final EdgeInsets smallAll = const EdgeInsets.all(10); // smallAll
}


class Symmetric
{
  Symmetric._();

  /// 10px horizontal
  EdgeInsets get smallHorizontal => EdgeInsets.symmetric(horizontal: 10.w);

  /// 15px horizontal
  EdgeInsets get mediumHorizontal => EdgeInsets.symmetric(horizontal: 15.w);

  /// 16px horizontal
  EdgeInsets get largeHorizontal => EdgeInsets.symmetric(horizontal: 16.w);

  /// 18px horizontal
  EdgeInsets get xLargeHorizontal => EdgeInsets.symmetric(horizontal: 18.w);

  /// 21px horizontal
  EdgeInsets get xxLargeHorizontal => EdgeInsets.symmetric(horizontal: 21.w);

  /// 22px horizontal
  EdgeInsets get xxxLargeHorizontal => EdgeInsets.symmetric(horizontal: 22.w);

  /// 38px horizontal
  EdgeInsets get hugeHorizontal => EdgeInsets.symmetric(horizontal: 38.w);

  /// 12px vertical
  EdgeInsets get mediumVertical => EdgeInsets.symmetric(vertical: 12.w);

  /// 16px all symmetric
  EdgeInsets get mediumAllSymmetric =>
      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w);
}


class Directional
{
  Directional._();

  /// 15px end only
  EdgeInsetsDirectional get mediumEnd => EdgeInsetsDirectional.only(end: 15.w);

}


class Single
{
  Single._();

  /// 30px left only
  EdgeInsets get largeLeft => EdgeInsets.only(left: 30.0.w);
}


class Special
{
  Special._();

  /// Zero padding
  final EdgeInsets zero = EdgeInsets.zero;
}
