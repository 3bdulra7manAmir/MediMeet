import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget
{
  const CustomErrorWidget({super.key, required this.e});

  final Object e;

  @override
  Widget build(BuildContext context)
  {
    return Center(child: Text('Error: $e'));
  }
}