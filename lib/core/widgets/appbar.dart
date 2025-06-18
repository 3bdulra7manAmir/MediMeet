import 'package:flutter/material.dart';

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
      leading: barLeading,
      leadingWidth: barLeadingWidth,
      title: barTitle,
      actions: barActions,
      actionsPadding: barActionsPadding,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
