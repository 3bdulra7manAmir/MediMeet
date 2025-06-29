import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'has_insurance_controller.g.dart';

@riverpod
class ToggleSwitch extends _$ToggleSwitch
{
  @override
  bool build() => false;

  void toggle() => state = !state;
  void set(bool value) => state = value;
}
