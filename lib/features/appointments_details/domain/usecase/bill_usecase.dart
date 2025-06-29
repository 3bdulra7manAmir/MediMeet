import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/appointment_bill.dart';
import '../repository/appointments_details_repository.dart';

part 'bill_usecase.g.dart';

@riverpod
Future<List<BillingModel>> billingUseCase(Ref ref) async
{
  try
  {
    return await ref.read(appointmentsDetailsRepositoryProvider).getBillingDetails();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [BillingModel(
      id: "0", 
      billTitle: "NULL", 
      billID: "NULL", 
      billPrice: "NULL", 
      billStatus: "NULL")];
  }
}
