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

  /// 16px all sides
  final EdgeInsets smallAll = const EdgeInsets.all(16); // smallAll
}


class Symmetric
{
  Symmetric._();

  /// 2px horizontal
  EdgeInsets get xXXSmall => EdgeInsets.symmetric(horizontal: 2.w);

  /// 8px horizontal 4px vertical
  EdgeInsets get xXSmall => EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w);
  
  /// 12px horizontal
  EdgeInsets get mediumH => EdgeInsets.symmetric(horizontal: 12.w);



  /// 16.5px horizontal 44.5px vertical
  EdgeInsets get xlargeHV => EdgeInsets.symmetric(horizontal: (16.5).w, vertical: (44.5).h);

  /// 20px horizontal, 20px vertical
  EdgeInsets get largeHV => EdgeInsets.symmetric(horizontal: (20).w, vertical: (20).h);

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
