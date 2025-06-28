import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../core/widgets/custom_circular_indicator.dart';
import '../../../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../../../core/widgets/custom_listview_builder.dart';
import '../../../../controller/filters_controllers/location/location_filter_controller.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';
import '../list_builder_separator_widget.dart';
import 'location_filter_widget.dart';

class LocationFilterChooseListBuilder extends ConsumerWidget
{
  const LocationFilterChooseListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final asyncLocations = ref.watch(locationFilterProvider);
    final selected = ref.watch(selectedFilterChoicesProvider);
    return asyncLocations.when(
      data: (locations)
      {
        final selectedLocation = _getSelectedLocation(selected);
        return CustomListviewBuilder(
          itemCount: locations.length,
          separatorBuilder: (context, index) => const ListBuilderSeparatorWidget(),
          itemBuilder: (context, i)
          {
            final title = locations[i].title ?? '';
            final id = locations[i].id ?? i.toString();
            final isSelected = selectedLocation?.id == id;
            return LocationFilterItem(title: title, isSelected: isSelected,
              onTap: ()
              {
                final notifier = ref.read(selectedFilterChoicesProvider.notifier);
                final choice = SelectedFilterChoice(type: FilterType.location, id: id, label: title,);
                if (isSelected)
                {
                  notifier.removeChoice(choice);
                }
                else
                {
                  notifier.addChoice(choice);
                }
              },
            );
          },
        );
      },
      loading: () => const CustomCircularIndicator(),
      error: (e, st) => CustomErrorWidget(e: e),
    );
  }

  SelectedFilterChoice? _getSelectedLocation(List<SelectedFilterChoice> list)
  {
    try
    {
      return list.firstWhere((c) => c.type == FilterType.location);
    }
    catch (_)
    {
      return null;
    }
  }
}
