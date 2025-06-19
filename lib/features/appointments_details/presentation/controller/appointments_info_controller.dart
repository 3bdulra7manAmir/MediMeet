import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/info_local_data_source.dart';
import '../../data/model/appointment_info.dart';
import '../../data/repository/info_repository_impl.dart';

part 'appointments_info_controller.g.dart';


// Local Data Source
@riverpod
DetailsLocalDataSource detailsLocalDataSource(Ref ref)
{
  return DetailsLocalDataSourceImpl();
}

// Repository
@riverpod
DetailsRepoImpl detailsRepository(Ref ref) {
  final local = ref.watch(detailsLocalDataSourceProvider);
  return DetailsRepoImpl(localDataSource: local);
}

// Async Data Provider
@riverpod
Future<List<DetailsModel>> details(Ref ref) {
  return ref.watch(detailsRepositoryProvider).getAppointmentDetails();
}
