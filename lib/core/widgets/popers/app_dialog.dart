import 'package:flutter/material.dart';

void showAppDialog({
  required BuildContext context,
  String? title,
  String? subtitle,
  AlignmentGeometry? alignment,
  MainAxisAlignment? actionsAlignment,
  Widget? content,
  List<Widget>? actions,
  })
  {
    showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      alignment: alignment,
      actionsAlignment: actionsAlignment,
      content: content,
      actions: actions,
    ),
  );
}
