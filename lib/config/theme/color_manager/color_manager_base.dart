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

  // Grey Color Range
  /// [_36394A]
  Color get kGrey001;

  // Black Color Range
  /// [_0D0D12]
  Color get kBlack001;

  // Black Color Range
  /// [_2563EB]
  Color get kBlue001;

  // Green Color Range
  /// [_60A77F]
  Color get kGreen001;
  /// [_7AC694]
  Color get kGreen002;
  /// [_468F69]
  Color get kGreen003;

}