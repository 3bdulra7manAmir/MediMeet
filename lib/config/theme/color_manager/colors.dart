import 'color_manager_base.dart';
import 'color_manager_light.dart';

class AppColors
{
  static AppColors? _instance;

  AppColors._();

  static AppColors get i
  {
    _instance ??= AppColors._();
    return _instance!;
  }

  static ColorManagerBase get color => i._colors;

  ColorManagerBase get _colors
  {
    return LightColorScheme();
  }
}
