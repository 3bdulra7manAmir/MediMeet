// import 'package:flutter_riverpod/flutter_riverpod.dart';

// final locationCheckboxProvider = StateNotifierProvider<CheckboxValuesNotifier, Map<int, bool>>(
//   (ref) => CheckboxValuesNotifier(),
// );

// class CheckboxValuesNotifier extends StateNotifier<Map<int, bool>>
// {
//   CheckboxValuesNotifier() : super({});

//   void toggle(int index)
//   {
//     final current = state[index] ?? false;
//     state = {...state, index: !current};
//   }

//   void setValue(int index, bool value)
//   {
//     state = {...state, index: value};
//   }

//   bool getValue(int index)
//   {
//     return state[index] ?? false;
//   }
// }
