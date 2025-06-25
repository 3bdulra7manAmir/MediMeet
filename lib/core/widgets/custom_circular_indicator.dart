import 'package:flutter/material.dart';

class CustomCircularIndicator extends StatelessWidget
{
  const CustomCircularIndicator({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(
      child: SizedBox(
        width: 32, height: 32,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}
