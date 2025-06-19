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

  /// 16px horizontal
  EdgeInsets get largeHorizontal => EdgeInsets.symmetric(horizontal: 16.w);

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
