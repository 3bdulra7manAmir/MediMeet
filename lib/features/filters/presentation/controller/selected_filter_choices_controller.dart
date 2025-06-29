import 'dart:developer';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_filter_choices_controller.g.dart';

/// Enum for filter types
enum FilterType {
  specialty,
  rating,
  location,
  insuranceProvider,
  clinicType,
}

/// Model for a selected filter choice
class SelectedFilterChoice {
  final FilterType type;
  final String id;
  final String label;
  final dynamic extra;

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

/// Auto-generated StateNotifier for managing selected filter choices
@riverpod
class SelectedFilterChoices extends _$SelectedFilterChoices
{
  @override
  List<SelectedFilterChoice> build()
  {
    return [];
  }

  /// Add a choice (multi or single depending on type)
  void addChoice(SelectedFilterChoice choice)
  {
    if (_isSingleSelectionFilter(choice.type))
    {
      // Replace any existing choice of the same type
      state =
      [
        ...state.where((c) => c.type != choice.type),
        choice,
      ];
    }
    else
    {
      // Allow multiple selections
      if (!state.contains(choice))
      {
        state = [...state, choice];
      }
    }
  }

  /// Remove a specific choice
  void removeChoice(SelectedFilterChoice choice)
  {
    state = state.where((c) => c != choice).toList();
  }

  /// Clear all filters
  void clearAll()
  {
    state = [];
  }

  /// Clear filters by type (optional)
  void clearByType(FilterType type)
  {
    state = state.where((c) => c.type != type).toList();
  }

  /// Get selected location (for radio)
  SelectedFilterChoice? get selectedLocation
  {
    try
    {
      return state.firstWhere((c) => c.type == FilterType.location);
    }
    catch (_)
    {
      log("NULL........");
      return null;
    }
  }

  bool _isSingleSelectionFilter(FilterType type)
  {
    return type == FilterType.location;
  }
}