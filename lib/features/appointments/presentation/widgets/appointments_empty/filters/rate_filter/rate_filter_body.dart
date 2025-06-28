import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../../../../../../config/theme/color_manager/colors.dart';
import '../../../../../../../core/constants/app_sizes.dart';
import '../../../../../../../core/constants/app_strings.dart';
import '../../../../../../../core/widgets/appbars/filters_appbar.dart';
import '../../../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../../../core/widgets/custom_nav_bar.dart';
import 'rate_filter_list.dart';
import '../../../../controller/filters_controllers/rating/rating_filter_controller.dart';
import '../../../../controller/filters_controllers/shared_checkbox_notifier.dart';
import '../../../../controller/filters_controllers/selected_filter_choices_controller.dart';

class RatingFilterBody extends StatelessWidget
{
  const RatingFilterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.color.kWhite002,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sizes.size16.verticalSpace,
            const CustomFiltersAppbar(appbarText: AppStrings.minimumRating),
            Sizes.size24.verticalSpace,
            const RatingFilterChosseListWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _) {
          return CustomNavBar(
            navBarChildren: CustomButton(
              text: AppStrings.addFilter,
              onPressed: () {
                final ratings = ref.read(ratingFilterProvider).asData?.value ?? [];
                final checked = ref.read(ratingCheckboxProvider);
                final notifier = ref.read(selectedFilterChoicesProvider.notifier);
                // Remove all previous rating choices
                notifier.clearByType(FilterType.rating);
                for (var i = 0; i < ratings.length; i++) {
                  final id = ratings[i].id?.toString() ?? i.toString();
                  if (checked[id] == true) {
                    final label = ratings[i].rateText ?? '';
                    final stars = double.tryParse(ratings[i].rateValue ?? '') ?? 0;
                    notifier.addChoice(SelectedFilterChoice(
                      type: FilterType.rating,
                      id: id,
                      label: label,
                      extra: stars,
                    ));
                  }
                }
                // Debug log
                // ignore: avoid_print
                final selected = ref.read(selectedFilterChoicesProvider).where((c) => c.type == FilterType.rating).toList();
                log('[DEBUG] Rating Add Filter pressed. Selected: $selected');
                ModalSheetRouter.router.pop();
              },
              width: double.infinity,
            ),
          );
        },
      ),
    );
  }
}
