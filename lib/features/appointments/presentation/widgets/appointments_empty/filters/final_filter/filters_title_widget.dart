import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../config/theme/font_manager/font_weights.dart';
import '../../../../../../../core/constants/app_images.dart';
import '../../../../../../../core/constants/app_styles.dart';

class FiltersTitleWidget extends StatelessWidget
{
  const FiltersTitleWidget({
    super.key, required this.title, required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
          [
            Text(title, style: AppStyles.large(fontWeight: AppFontWeights.mediumWeight)),
            GestureDetector(
              onTap: onTap,
              child: SvgPicture.asset(AppAssets.icons.rightArrowGrey)
            ),
          ],
        )
      ],
    );
  }
}