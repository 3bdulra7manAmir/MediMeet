import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/router/app_router.dart';
import '../../constants/app_images.dart';
import '../../constants/app_styles.dart';


class FiltersAppbar extends StatelessWidget
{
  const FiltersAppbar({super.key, required this.appbarText});

  final String appbarText;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(appbarText, style: AppStyles.xXXLarge(),),
        const Spacer(),
        GestureDetector(onTap: () => AppRouter.router.pop(), child: SvgPicture.asset(AppAssets.icons.cancelgrey))
      ],
    );
  }
}