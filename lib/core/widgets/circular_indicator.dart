import 'package:flutter/material.dart';

class AppCircularIndicator extends StatelessWidget
{
  const AppCircularIndicator({super.key});

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
