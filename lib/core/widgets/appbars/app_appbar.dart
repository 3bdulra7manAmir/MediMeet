import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_appointments/core/extensions/widget_padding.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget
{
  const CustomAppBar({
    super.key,
    this.backgroundColor,
    this.isDefaultBack,
    this.barLeading,
    this.barLeadingWidth,
    this.barTitle,
    this.barActions,
    this.barActionsPadding,
    this.isPaddingTop,
    this.toolbarHeight, 
  });

  final Color? backgroundColor;
  final bool? isDefaultBack;
  final Widget? barLeading;
  final double? barLeadingWidth;
  final Widget? barTitle;
  final List<Widget>? barActions;
  final EdgeInsetsGeometry? barActionsPadding;
  final bool? isPaddingTop;
  final double? toolbarHeight;


  @override
  Widget build(BuildContext context)
  {
    return AppBar(
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: isDefaultBack ?? false,
      leading: barLeading,
      leadingWidth: barLeadingWidth,
      title: barTitle,
      actions: barActions,
      actionsPadding: barActionsPadding,
    ).paddingDirectionalOnly(top: (isPaddingTop ?? false) ? 24.h : 0);
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + (toolbarHeight ?? 0));
}
