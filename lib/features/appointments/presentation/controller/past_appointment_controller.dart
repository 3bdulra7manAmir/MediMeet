import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/past_local_data_source.dart';
import '../../data/model/past_appointments.dart';
import '../../data/repository/past_repository_impl.dart';
import '../../domain/usecase/past_usecase.dart';

part 'past_appointment_controller.g.dart';

// DataSource Provider
@riverpod
PastLocalDataSource pastLocalDataSource(Ref ref)
{
  return PastLocalDataSourceImpl();
}

// Repository Provider
@riverpod
PastRepoImpl pastRepository(Ref ref)
{
  final localDataSource = ref.watch(pastLocalDataSourceProvider);
  return PastRepoImpl(localDataSource: localDataSource);
}

// UseCase Provider
@riverpod
PastAppointmentUsecase pastAppointmentsUsecase(Ref ref)
{
  return PastAppointmentUsecase(ref.watch(pastRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<PastModel>> pastAppointments(Ref ref) async
{
  final usecase = ref.watch(pastAppointmentsUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
