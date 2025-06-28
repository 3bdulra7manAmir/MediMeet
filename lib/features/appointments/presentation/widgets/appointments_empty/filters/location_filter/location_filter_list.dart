import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../controller/filters_controllers/location/location_filter_controller.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../list_builder_separator_widget.dart';
import 'location_filter_widget.dart';

class LocationFilterChooseListBuilder extends ConsumerWidget
{
  const LocationFilterChooseListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLocations = ref.watch(locationFilterProvider);
    final checked = ref.watch(locationCheckboxProvider);
    // Only allow one selection (radio button logic)
    return asyncLocations.when(
      data: (locations)
      {
        // Find the selected id
        final String selectedId = checked.entries.firstWhere((e) => e.value, orElse: () => const MapEntry('', false)).key;
        return CustomListviewBuilder(
          itemCount: locations.length,
          separatorBuilder: (context, index) => const ListBuilderSeparatorWidget(),
          itemBuilder: (context, i)
          {
            final title = locations[i].title ?? '';
            final id = locations[i].id ?? i.toString();
            final isSelected = selectedId == id;
            return LocationFilterItem(
              title: title,
              isSelected: isSelected,
              onTap: () {
                // Clear all, then set only this id to true
                final notifier = ref.read(locationCheckboxProvider.notifier);
                notifier.clearAll();
                notifier.setValue(id, true);
              },
            );
          },
        );
      },
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }

}
