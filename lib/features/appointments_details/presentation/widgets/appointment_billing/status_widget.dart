import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medical_appointments/core/widgets/circular_indicator.dart';
import 'package:medical_appointments/core/widgets/error_widget.dart';
import '../../controller/appointments_bill_controller.dart';
import 'status_paid_widget.dart';
import 'status_failed_widget.dart';
import 'status_in_progress_widget.dart';

class StatusWidget extends ConsumerWidget
{
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref)
  {
    final billAsync = ref.watch(billProvider);
    return billAsync.when(
      data: (bills)
      {
        final bill = bills.isNotEmpty ? bills.first : null;
        if (bill == null) return const AppCircularIndicator();
        switch (bill.billStatus?.toLowerCase())
        {
          case 'paid':
            return const StatusPaidWidget();
          case 'failed':
            return const StatusFailedWidget();
          case 'inprogress':
            return const StatusInPrograssWidget();
          default:
            return const AppCircularIndicator();
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (e, _) => CustomErrorWidget(e: e),
    );
  }
}