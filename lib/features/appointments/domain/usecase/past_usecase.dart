import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/past_appointments.dart';
import '../repository/past_repository.dart';

part 'past_usecase.g.dart';

@riverpod
Future<List<PastModel>> pastAppointmentUseCase(Ref ref) async
{
  try
  {
    return await ref.read(pastRepositoryProvider).getPastAppointments();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [PastModel(
      pastCategory: "NuLL", 
      pastDateTime: "NuLL", 
      pastID: "NuLL", 
      pastRate: 0.0, 
      pastRateDescription: "NuLL", 
      pastTitle: "NuLL",)];
  }
}
