import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/appointment_info.dart';
import '../repository/appointments_details_repository.dart';

part 'info_usecase.g.dart';

@riverpod
Future<List<DetailsModel>> detailsUseCase(Ref ref) async
{
  try
  {
    return await ref.read(appointmentsDetailsRepositoryProvider).getAppointmentDetails();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [DetailsModel(
      detailsID: "0", 
      detailsCategory: "NULL",
      detailsDateTime: "NULL",
      detailsTitle: "NULL",
      )];
  }
}
