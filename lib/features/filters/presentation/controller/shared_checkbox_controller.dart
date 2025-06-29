import 'package:flutter_riverpod/flutter_riverpod.dart';


class CheckboxValuesNotifier extends StateNotifier<Map<String, bool>>
{
  CheckboxValuesNotifier() : super({});

  void setValue(String id, bool value)
  {
    state = {...state, id: value};
  }

  bool getValue(String id)
  {
    return state[id] ?? false;
  }

  void clearAll()
  {
    state = {};
  }
}

final clinicTypeCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<String, bool>>((ref) => CheckboxValuesNotifier(),);
final insuranceCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<String, bool>>((ref) => CheckboxValuesNotifier(),);
final ratingCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<String, bool>>((ref) => CheckboxValuesNotifier(),);
final specialtyCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<String, bool>>((ref) => CheckboxValuesNotifier(),);
final locationCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<String, bool>>((ref) => CheckboxValuesNotifier(),);