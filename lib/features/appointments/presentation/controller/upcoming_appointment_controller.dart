import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/upcoming_local_data_source.dart';
import '../../data/model/upcoming_appointments.dart';
import '../../data/repository/upcoming_repository_impl.dart';
import '../../domain/usecase/upcoming_usecase.dart';

part 'upcoming_appointment_controller.g.dart';

// Local Data Source
@riverpod
UpComingLocalDataSource upcomingLocalDataSource(Ref ref)
{
  return UpComingLocalDataSourceImpl();
}

// Repository
@riverpod
UpComingRepoImpl upcomingRepository(Ref ref)
{
  final local = ref.watch(upcomingLocalDataSourceProvider);
  return UpComingRepoImpl(localDataSource: local);
}

// Use Case
@riverpod
UpComingAppointmentUsecase upcomingAppointmentsUsecase(Ref ref)
{
  return UpComingAppointmentUsecase(ref.watch(upcomingRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<UpComingModel>> upcomingAppointments(Ref ref) async
{
  final usecase = ref.watch(upcomingAppointmentsUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
