import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_filter_choices_controller.g.dart';

enum FilterType { specialty, rating, location, insuranceProvider, clinicType }

class SelectedFilterChoice {
  final FilterType type;
  final String id;
  final String label;
  final dynamic extra;

  const SelectedFilterChoice({
    required this.type,
    required this.id,
    required this.label,
    this.extra,
  });

  @override
  bool operator ==(Object other) =>
      other is SelectedFilterChoice && type == other.type && id == other.id;

  @override
  int get hashCode => type.hashCode ^ id.hashCode;
}

@riverpod
class SelectedFilterChoices extends _$SelectedFilterChoices
{
  @override
  List<SelectedFilterChoice> build() => [];

  void addChoice(SelectedFilterChoice choice)
  {
    final isSingle = choice.type == FilterType.location;
    state = isSingle
    ? [...state.where((c) => c.type != choice.type), choice]
    : state.contains(choice) ? state : [...state, choice];
  }

  void removeChoice(SelectedFilterChoice choice)
  {
    state = state.where((c) => c != choice).toList();
  }

  void clearAll() => state = [];

  void clearByType(FilterType type)
  {
    state = state.where((c) => c.type != type).toList();
  }

  SelectedFilterChoice? get selectedLocation
  {
    try
    {
      return state.firstWhere((c) => c.type == FilterType.location);
    }
    catch (_)
    {
      return null;
    }
}
}