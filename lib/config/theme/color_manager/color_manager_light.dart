import 'package:flutter/material.dart';
import 'color_manager_base.dart';


class LightColorScheme extends ColorManagerBase
{
  @override
  /// [Transparent]
  Color get kTransparent => Colors.transparent;

  // White Color Range
  @override
  /// [F8F8F8]
  Color get kWhite001 => const Color(0xffF8F8F8);
  @override
  /// [FFFFFF]
  Color get kWhite002 => const Color(0xffFFFFFF);
  @override
  /// [ECEFF3]
  Color get kWhite003 => const Color(0xffECEFF3);
  @override
  /// [EAF7F1]
  Color get kWhite004 => const Color(0xffEAF7F1);

  // Grey Color Range
  @override
  /// [36394A]
  Color get kGrey001 => const Color(0xff36394A);
  
  // Black Color Range
  @override
  /// [0D0D12]
  Color get kBlack001 => const Color(0xff0D0D12);
  
  // Blue Color Range
  @override
  /// [_2563EB]
  Color get kBlue001 => const Color(0xff2563EB);
  
  // Green Color Range
  @override
  /// [_60A77F]
  Color get kGreen001 => const Color(0xff60A77F);
  @override
  /// [_7AC694]
  Color get kGreen002 => const Color(0xff7AC694);
  @override
  /// [_468F69]
  Color get kGreen003 => const Color(0xff468F69);
  
}