import 'package:flutter/material.dart';

class CustomListviewBuilder extends StatelessWidget
{
  final Widget Function(BuildContext, int) separatorBuilder;
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final EdgeInsetsGeometry? padding;
  final bool? reverse;
  final ScrollPhysics? physics;
  final Axis? scrollDirection ;

  const CustomListviewBuilder({super.key,
  required this.itemBuilder,
  required this.separatorBuilder,
  required this.itemCount,
  this.padding,
  this.reverse,
  this.physics,
  this.scrollDirection,
  });

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
      scrollDirection: scrollDirection ?? Axis.vertical,
      itemBuilder: itemBuilder,
      separatorBuilder: separatorBuilder,
      itemCount: itemCount,
      padding: padding,
      reverse: reverse ?? false,
      shrinkWrap: true,
      physics: physics ?? const ScrollPhysics(),
    );
  }
}