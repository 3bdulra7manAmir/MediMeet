import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shared_checkbox_controller.g.dart';

/// Enum to distinguish different checkbox groups
enum CheckboxGroup {
  clinicType,
  insurance,
  rating,
  specialty,
  location,
}

@riverpod
class CheckboxValuesNotifier extends _$CheckboxValuesNotifier {
  @override
  Map<CheckboxGroup, Map<String, bool>> build() {
    return {
      for (var group in CheckboxGroup.values) group: {},
    };
  }

  void setValue(CheckboxGroup group, String id, bool value) {
    final currentGroup = state[group] ?? {};
    state = {
      ...state, group: {...currentGroup, id: value,},
    };
  }

  bool getValue(CheckboxGroup group, String id) {
    return state[group]?[id] ?? false;
  }

  void clearGroup(CheckboxGroup group) {
    state = {
      ...state, group: {},
    };
  }

  void clearAll() {
    state = {for (var group in CheckboxGroup.values) group: {},};
  }
}
