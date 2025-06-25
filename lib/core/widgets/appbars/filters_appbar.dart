import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/router/app_router/app_router.dart';
import '../../../config/router/bottom_modal_sheet_router/modal_sheet_router.dart';
import '../../constants/app_images.dart';
import '../../constants/app_styles.dart';


class CustomFiltersAppbar extends StatelessWidget
{
  const CustomFiltersAppbar({super.key, required this.appbarText});

  final String appbarText;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        Text(appbarText, style: AppStyles.xXXLarge(),),
        const Spacer(),
        GestureDetector(onTap: () => popAction(),
        child: SvgPicture.asset(AppAssets.icons.cancelgrey))
      ],
    );
  }

  void popAction()
  {
    try
    {
      //log("ModalSheetRouter - Poped");
      return ModalSheetRouter.router.pop();
    }
    catch (err, stack)
    {
      //log("Error: $stack");
      return AppRouter.router.pop();
    }
  }
}