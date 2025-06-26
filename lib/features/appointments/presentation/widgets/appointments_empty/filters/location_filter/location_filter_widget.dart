import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_styles.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';

class LocationFilterChooseWidget extends ConsumerWidget
{
  final List<String> locations;
  final List<String?>? locationIds;
  const LocationFilterChooseWidget({super.key, required this.locations, this.locationIds});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final selectedChoices = ref.watch(selectedFilterChoicesProvider).where((c) => c.type == FilterType.location).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(locations.length, (i)
      {
        final isSelected = selectedChoices.any((c) => c.id == (locationIds != null ? locationIds![i] : i.toString()));
        return Row(
          children:
          [
            Sizes.size16.horizontalSpace,
            Checkbox(
              value: isSelected,
              onChanged: (val)
              {
                final notifier = ref.read(selectedFilterChoicesProvider.notifier);
                final choice = SelectedFilterChoice(type: FilterType.location, id: locationIds != null ? locationIds![i] ?? i.toString() : i.toString(), label: locations[i],);
                if (val == true)
                {
                  notifier.addChoice(choice);
                }
                else
                {
                  notifier.removeChoice(choice);
                }
              },
            ),
            Sizes.size8.horizontalSpace,
            Text(locations[i], style: AppStyles.large()),
          ],
        );
      }),
    );
  }
}
