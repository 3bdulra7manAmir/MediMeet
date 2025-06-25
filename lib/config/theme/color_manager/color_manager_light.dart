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
  @override
  /// [F6F8FA]
  Color get kWhite005 => const Color(0xffF6F8FA);
  @override
  /// [EEF4FE]
  Color get kWhite006 => const Color(0xffEEF4FE);

  // Grey Color Range
  @override
  /// [_36394A]
  Color get kGrey001 => const Color(0xff36394A);
  @override
  /// [_666D80]
  Color get kGrey002 => const Color(0xff666D80);
  @override
  /// [_DFE1E7]
  Color get kGrey003 => const Color(0xffDFE1E7);
  @override
  /// [_BCC4CD]
  Color get kGrey004 => const Color(0xffBCC4CD);
  @override
  /// [_F3F3F4]
  Color get kGrey005 => const Color(0xfff3f3f4);

  
  // Black Color Range
  @override
  /// [_0D0D12]
  Color get kBlack001 => const Color(0xff0D0D12);
  @override
  /// [_121212]
  Color get kBlack002 => const Color(0xff121212);
  @override
  /// [_1A1B25]
  Color get kBlack003 => const Color(0xff1A1B25);
  @override
  /// [_141316]
  Color get kBlack004 => const Color(0xff141316);
  
  // Blue Color Range
  @override
  /// [_2563EB]
  Color get kBlue001 => const Color(0xff2563EB);
  @override
  /// [_4B82F1]
  Color get kBlue002 => const Color(0xff4B82F1);
  @override
  /// [_A6C1FA]
  Color get kBlue003 => const Color(0xffA6C1FA);
  @override
  /// [rgba(37, 99, 235, 0.16)]
  Color get kBlue004 => const Color(0xffD5DFF4).withAlpha((0.16 * 255).toInt());
  
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
  @override
  /// [_DDF3EF]
  Color get kGreen004 => const Color(0xffDDF3EF);
  @override
  /// [_28806F]
  Color get kGreen005 => const Color(0xff28806F);

  // Red Color Range
  @override
  /// [_D92C20]
  Color get kRed001 => const Color(0xffD92C20);
  // Red Color Range
  @override
  /// [_E34A4A]
  Color get kRed002 => const Color(0xffE34A4A);
  @override
  /// [_EEB8B8]
  Color get kRed003 => const Color(0xFFEEB8B8);
  

  // Yellow Color Range
  /// [FFDE00]
  @override
  Color get kYellow001 => const Color(0xFFF3E3A4);
  /// [_524C39]
  @override
  Color get kYellow002 => const Color(0xff524C39);
}