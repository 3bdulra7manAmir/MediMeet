import 'package:flutter/material.dart';

void showAppBottomSheet({
  required BuildContext context,
  bool? isScrollControlled,
  bool? isDismissible,
  bool? useRootNavigator,
  ShapeBorder? shape,
  required WidgetBuilder builder,
}) {
  showModalBottomSheet(
    context: context,
    isDismissible: isDismissible ?? true,
    isScrollControlled: isScrollControlled ?? true,
    useRootNavigator: useRootNavigator ?? false,
    shape: shape,
    builder: builder,
  );
}
