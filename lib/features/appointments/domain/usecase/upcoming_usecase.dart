import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/upcoming_appointments.dart';
import '../repository/upcoming_repository.dart';

part 'upcoming_usecase.g.dart';

@riverpod
Future<List<UpComingModel>> upComingAppointmentUseCase(Ref ref) async
{
  try
  {
    return await ref.read(upComingRepositoryProvider).getUpComingAppointments();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [UpComingModel(

      upComingDateTime: "NuLL", 
      upComingID: "NuLL", 
      upComingLocation: "NuLL", 
      upComingTitle: "NuLL", )];
  }
}
