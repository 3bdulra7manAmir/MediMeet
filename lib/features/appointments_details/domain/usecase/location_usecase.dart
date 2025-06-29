import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/appointment_location.dart';
import '../repository/appointments_details_repository.dart';

part 'location_usecase.g.dart';

@riverpod
Future<List<LocationModel>> locationUseCase(Ref ref) async
{
  try
  {
    return await ref.read(appointmentsDetailsRepositoryProvider).getLocationDetails();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [LocationModel(
      locationID: "0", 
      locationLat: 0,
      locationLng: 0,
      locationTitle: "NULL",
      )];
  }
}
