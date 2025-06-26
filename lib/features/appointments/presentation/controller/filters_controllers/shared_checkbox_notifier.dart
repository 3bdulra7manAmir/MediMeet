import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckboxValuesNotifier extends StateNotifier<Map<int, bool>>
{
  CheckboxValuesNotifier() : super({});

  void setValue(int index, bool value)
  {
    state = {...state, index: value};
  }

  bool getValue(int index)
  {
    return state[index] ?? false;
  }

  void clearAll()
  {
    state = {};
  }
}

final clinicTypeCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<int, bool>>((ref) => CheckboxValuesNotifier(),);
final insuranceCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<int, bool>>((ref) => CheckboxValuesNotifier(),);
final ratingCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<int, bool>>((ref) => CheckboxValuesNotifier(),);
final specialtyCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<int, bool>>((ref) => CheckboxValuesNotifier(),);