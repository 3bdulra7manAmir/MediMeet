import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../controller/location/location_filter_controller.dart';
import '../../../controller/shared_checkbox_controller.dart';
import '../../../widget/list_builder_separator_widget.dart';
import 'location_filter_widget.dart';

class LocationFilterChooseListBuilder extends ConsumerWidget
{
  const LocationFilterChooseListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncLocations = ref.watch(locationFilterProvider);
    final checked = ref.watch(checkboxValuesNotifierProvider);

    return asyncLocations.when(
      data: (locations)
      {
        final locationChecked = checked[CheckboxGroup.location] ?? {};
        final String selectedId = locationChecked.entries.firstWhere((e) => e.value, orElse: () => const MapEntry('', false)).key;
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
              onTap: ()
              {
                final notifier = ref.read(checkboxValuesNotifierProvider.notifier);
                notifier.clearGroup(CheckboxGroup.location);
                notifier.setValue(CheckboxGroup.location, id, true);
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
