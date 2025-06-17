import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/router/app_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const CustomAppBar({
    super.key,
    this.barLeading,
    this.barTitle,
    this.barActions,
    this.barActionsPadding,
    this.barLeadingWidth,
  });

  final Widget? barLeading;
  final Widget? barTitle;
  final List<Widget>? barActions;
  final EdgeInsetsGeometry? barActionsPadding;
  final double? barLeadingWidth;

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      leading: GestureDetector(
        onTap: () => AppRouter.router.pop(),
        child: barLeading,
      ),
      leadingWidth: barLeadingWidth ?? 65.w,
      title: barTitle,
      actions: barActions,
      actionsPadding: barActionsPadding,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
