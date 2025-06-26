import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Enum for filter types
enum FilterType
{
  specialty,
  rating,
  location,
  insuranceProvider,
  clinicType,
}

/// Model for a selected filter choice
class SelectedFilterChoice
{
  final FilterType type;
  final String id; // Unique identifier for the choice (e.g., id or value)
  final String label; // Display label
  final dynamic extra; // Optional: for widget or additional info

  SelectedFilterChoice({
    required this.type,
    required this.id,
    required this.label,
    this.extra,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SelectedFilterChoice &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          id == other.id;

  @override
  int get hashCode => type.hashCode ^ id.hashCode;
}

/// StateNotifier for managing selected filter choices
class SelectedFilterChoicesNotifier extends StateNotifier<List<SelectedFilterChoice>>
{
  SelectedFilterChoicesNotifier() : super([]);

  void addChoice(SelectedFilterChoice choice)
  {
    if (!state.contains(choice))
    {
      state = [...state, choice];
    }
  }

  void removeChoice(SelectedFilterChoice choice)
  {
    state = state.where((c) => c != choice).toList();
  }

  void removeByTypeAndId(FilterType type, String id)
  {
    state = state.where((c) => c.type != type || c.id != id).toList();
  }

  void clearAll()
  {
    state = [];
  }
}

final selectedFilterChoicesProvider =
    StateNotifierProvider<SelectedFilterChoicesNotifier, List<SelectedFilterChoice>>(
  (ref) => SelectedFilterChoicesNotifier(),
);
