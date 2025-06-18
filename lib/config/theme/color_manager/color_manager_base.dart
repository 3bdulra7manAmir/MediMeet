import 'package:flutter/material.dart';


abstract class ColorManagerBase
{
  /// [Transparent]
  Color get kTransparent;

  // White Color Range
  /// [F8F8F8]
  Color get kWhite001;
  /// [FFFFFF]
  Color get kWhite002;
  /// [ECEFF3]
  Color get kWhite003;
  /// [EAF7F1]
  Color get kWhite004;
  /// [F6F8FA]
  Color get kWhite005;
  /// [EEF4FE]
  Color get kWhite006;

  // Grey Color Range
  /// [_36394A]
  Color get kGrey001;
  /// [_666D80]
  Color get kGrey002;

  // Black Color Range
  /// [_0D0D12]
  Color get kBlack001;
  /// [_121212]
  Color get kBlack002;

  // Blue Color Range
  /// [_2563EB]
  Color get kBlue001;
  /// [_4B82F1]
  Color get kBlue002;
  /// [_A6C1FA]
  Color get kBlue003;

  // Green Color Range
  /// [_60A77F]
  Color get kGreen001;
  /// [_7AC694]
  Color get kGreen002;
  /// [_468F69]
  Color get kGreen003;

}