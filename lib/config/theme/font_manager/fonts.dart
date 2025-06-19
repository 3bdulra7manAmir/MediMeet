
import 'font_manager_base.dart';
import 'font_manager_inter.dart';

class AppFonts
{
  static AppFonts? _instance;

  AppFonts._();

  static AppFonts get i
  {
    _instance ??= AppFonts._();
    return _instance!;
  }

  static FontManagerBase get font => i._fonts;
  String _fontKey = 'InterTight';

  set fontKey(String key)
  {
    if (key.trim().isEmpty) return;
    _fontKey = key.toLowerCase();
  }


  FontManagerBase get _fonts
  {
    switch (_fontKey)
    {
      case 'InterTight':
        return FontInterTight();
      default:
        return FontInterTight();
    }
  }
}
