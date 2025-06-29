import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/appointments_local_data_source.dart';
import '../../data/model/past_appointments.dart';
import '../../data/model/upcoming_appointments.dart';
import '../../data/repository/appointments_repository_impl.dart';

part 'appointments_repository.g.dart';

abstract class AppointmentsRepository
{
  Future<List<PastModel>> getPastAppointments();
  Future<List<UpComingModel>> getUpComingAppointments();
}

@riverpod
AppointmentsRepository appointmentsRepository(Ref ref)
{
  return AppointmentsRepositoryImpl(
    localDataSource: ref.read(appointmentsLocalDataSourceProvider),
  );
}